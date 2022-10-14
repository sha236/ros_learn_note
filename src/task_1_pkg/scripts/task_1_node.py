#!/usr/bin/env python3
#coding=utf-8

import rospy
from geometry_msgs.msg import Twist

if __name__ == "__main__":
    rospy.init_node("task_1_node")
    vel_pub = rospy.Publisher("/cmd_vel",Twist,queue_size=10)
    vel_msg = Twist()
    rate = rospy.Rate(100)
    while not rospy.is_shutdown():
        vel_msg.angular.z = 0
        vel_msg.linear.x = 0.1
        for num in range(1,500):
            vel_pub.publish(vel_msg)
            rate.sleep()
        vel_msg.linear.x = 0
        vel_msg.angular.z = 0.9
        for num in range(1,200):
            vel_pub.publish(vel_msg)
            rate.sleep()
