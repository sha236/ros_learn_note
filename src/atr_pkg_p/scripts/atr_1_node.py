#!/usr/bin/env python3
#coding=utf-8

import rospy
from std_msgs.msg import String

def chao_callback(msg):
    rospy.loginfo(msg.data)

if __name__ == "__main__":
    rospy.init_node("atr_1_node")
    sub = rospy.Subscriber("chao_msg",String,chao_callback,queue_size=10)
    rospy.spin()