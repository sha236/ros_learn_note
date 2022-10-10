#!/usr/bin/env python3
#coding=utf-8

import rospy
from sensor_msgs.msg import Imu
from tf.transformations import euler_from_quaternion
import math

def ImuCallBack(msg):
    if msg.orientation_covariance[0] < 0:
        return
    quaternion = [
        msg.orientation.x,
        msg.orientation.y,
        msg.orientation.z,
        msg.orientation.w,
    ]
    (row,pitch,yaw) = euler_from_quaternion(quaternion)
    row = row*180/math.pi
    pitch = pitch*180/math.pi
    yaw = yaw*180/math.pi
    rospy.loginfo("row: %.0f    pitch: %.0f     yaw: %.0f",row,pitch,yaw)


if __name__ == "__main__":
    rospy.init_node("imu_node")
    imu_sub = rospy.Subscriber("/imu/data",Imu,ImuCallBack,queue_size=10)
    rospy.spin()