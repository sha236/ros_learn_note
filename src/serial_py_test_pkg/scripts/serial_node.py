#!/usr/bin/env python3
#coding=utf-8

from multiprocessing.util import is_exiting
import rospy
import serial
import struct

class SerialPort:
    def __init__(self,port,buand):
        self.port = serial.Serial(port,buand)
        self.port.close()
        if not self.port.is_open:
            self.port.open()

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


    def port_close(self):
        self.port.close()

serialPort = '/dev/ttyUSB0'
baudRate = 115200
BAG_LENGTH = 32
is_exit = False
data_bytes = bytearray()    

if __name__ == "__main__":
    rospy.init_node("serial_node")

    m1SerialPort = SerialPort(serialPort,baudRate)
    temp_data = m1SerialPort.read_data()
    buf_data = struct.unpack('<iffffffi',temp_data)
    print(temp_data)
    

