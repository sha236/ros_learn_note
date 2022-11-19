#!/usr/bin/env python3
#coding=utf-8

import rospy
import serial
import struct
from geometry_msgs.msg import Twist

speed_bias = 4 
rotate_bias = 12 

class SerialPort:
    def __init__(self,port,buand):
        self.port = serial.Serial(port,buand)
        self.port.close()
        if not self.port.is_open:
            self.port.open()
        self.vx = 0
        self.vy = 0
        self.vw = 0

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

serialPort = '/dev/ttyACM0'
baudRate = 115200
BAG_LENGTH = 32
is_exit = False
data_bytes = bytearray()    

SpeedSerialPort = SerialPort(serialPort,baudRate)

def SpeedSerialCallBack(msg):
    global SpeedSerialPort
    SpeedSerialPort.vx = msg.linear.x * speed_bias
    SpeedSerialPort.vy = msg.linear.y * speed_bias
    SpeedSerialPort.vw = -msg.angular.z * rotate_bias

    print(msg.linear.x)
    SendPackedData = struct.pack('<fff',SpeedSerialPort.vx,SpeedSerialPort.vy,SpeedSerialPort.vw)
    SpeedSerialPort.port.write(SendPackedData)



if __name__ == "__main__":
    rospy.init_node("serial_node")
    T265_sub = rospy.Subscriber("/cmd_vel",Twist,SpeedSerialCallBack,queue_size= 10)
    rospy.spin()
    
