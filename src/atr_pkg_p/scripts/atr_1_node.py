#!/usr/bin/env python3
#coding=utf-8

import rospy
from std_msgs.msg import String
from my_msgs_p.msg import mymsg

def chao_callback(msg):
    rospy.loginfo("grade: %s star: %d data: %s",msg.grade,msg.star,msg.data)

if __name__ == "__main__":
    rospy.init_node("atr_1_node")
    sub = rospy.Subscriber("chao_msg",mymsg,chao_callback,queue_size=10)
    rospy.spin()