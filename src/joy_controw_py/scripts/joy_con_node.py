#!/usr/bin/env python3
#coding=utf-8

import rospy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist

def JoyCallBack(msg):
    vel_cmd = Twist()
    vel_cmd.linear.y = msg.axes[0]
    vel_cmd.linear.x = msg.axes[1]
    vel_cmd.angular.z = msg.axes[2]
    global vel_pub
    vel_pub.publish(vel_cmd)

if __name__ == "__main__":
    rospy.init_node("joy_con_node")
    joy_sub = rospy.Subscriber("joy",Joy,JoyCallBack,queue_size= 10)
    vel_pub = rospy.Publisher("/cmd_vel",Twist,queue_size= 10)
    rospy.spin()