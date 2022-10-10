#!/usr/bin/env python3
#coding=utf-8

import rospy
from sensor_msgs.msg import LaserScan
from geometry_msgs.msg import Twist

def LaserScanCallBack(msg):
    dist = msg.ranges[180]
    rospy.loginfo("前方测距 ranges[180] = %f m",dist)
    vel_msg = Twist()
    if dist < 1.5:
        vel_msg.angular.z = 0.7
    else:
        vel_msg.linear.x = 0.05
    vel_pub.publish(vel_msg)

if __name__ == "__main__":
    rospy.init_node("lidar_node")
    lid_sub = rospy.Subscriber("/scan",LaserScan,LaserScanCallBack,queue_size=10)
    vel_pub = rospy.Publisher("/cmd_vel",Twist,queue_size=10)
    rospy.spin()