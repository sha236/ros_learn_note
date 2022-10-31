#!/usr/bin/env python3
#coding=utf-8

import rospy
import serial
import struct

testSerialPort = serial.Serial(port='/dev/ttyUSB0',baudrate=115200,parity= serial.PARITY_ODD)
write_data = 1
temp_data = struct.pack('<i',write_data)
print(temp_data)
testSerialPort.write(temp_data)