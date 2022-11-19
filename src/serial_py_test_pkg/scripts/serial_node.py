#!/usr/bin/env python3
#coding=utf-8

import rospy
import serial
import struct
from geometry_msgs.msg import Twist

class SerialPort:
    def __init__(self,port,buand):
        self.port = serial.Serial(port,buand)
        self.port.close()
        if not self.port.is_open:
            self.port.open()
        self.vx = 0
        self.vy = 0
        self.vw = 0

    def port_open(self):
        if not self.port.is_open():
            self.port.open('')

    def read_data(self):
        global is_exit
        global data_bytes
        while not is_exit:
            count  = BAG_LENGTH
            if count > 0:
                rec_str = self.port.read(count)
                data_bytes = data_bytes + rec_str
                is_exit =True

        return rec_str
    
    def write_data(self,send_data):
        serial.Serial.write(send_data)


    def port_close(self):
        self.port.close()

serialPort = '/dev/ttyUSB0'
baudRate = 115200
BAG_LENGTH = 32
is_exit = False
data_bytes = bytearray()    

def SpeedSerialCallBack(msg):
    global SpeedSerialPort
    SpeedSerialPort.port_open()
    SpeedSerialPort.vx = msg.linear.x
    SpeedSerialPort.vy = msg.linear.y
    SpeedSerialPort.vw = msg.angular.z
    SendPackedData = struct.pack('<fff',SpeedSerialPort.vx,SpeedSerialPort.vy,SpeedSerialPort.vw)
    SpeedSerialPort.write_data(SendPackedData)



if __name__ == "__main__":
    rospy.init_node("serial_node")
    SpeedSerialPort = SerialPort(serialPort,baudRate)
    T265_sub = rospy.Subscriber("/cmd_vel",Twist,SpeedSerialCallBack,queue_size= 10)
    
