#!/usr/bin/env python3
#coding=utf-8

import rospy
from sensor_msgs.msg import Joy
from robot_msgs.msg import user_control_msg

def JoyCallBack(msg):
    global control_info
    if msg.buttons[0] == 1:
        control_info.need_stop = 1 - control_info.need_stop
    con_pub.publish(control_info)



if __name__ == "__main__":
    rospy.init_node("controler_receiver_node")
    joy_sub = rospy.Subscriber("joy",Joy,JoyCallBack,queue_size= 10)
    con_pub = rospy.Publisher("User_Control_msg",user_control_msg,queue_size= 10)
    control_info = user_control_msg()
    control_info.need_stop = 1
    rospy.spin()
