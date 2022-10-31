#!/usr/bin/env python3
#coding=utf-8

import rospy
from geometry_msgs.msg import Twist
import struct
import serial

def SerialCallBack(msg):
    send_hex_data = struct.pack('<fff',msg.linear.y,msg.linear.x,msg.angular.z)
    print(send_hex_data)
    global USB0SerialPort
    USB0SerialPort.write(send_hex_data)

if __name__ == "__main__":
    rospy.init_node("joy_con_serial_node")
    joy_sub = rospy.Subscriber("/cmd_vel",Twist,SerialCallBack,queue_size= 10)
    USB0SerialPort = serial.Serial(port='/dev/ttyUSB1',baudrate=115200)
    rospy.spin()