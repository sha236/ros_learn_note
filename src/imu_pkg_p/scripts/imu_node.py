#!/usr/bin/env python3
#coding=utf-8

import rospy
from sensor_msgs.msg import Imu
from tf.transformations import euler_from_quaternion
import math
from geometry_msgs.msg import Twist

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
    target_yaw = -90
    diff_angel = target_yaw - yaw
    vel_cmd = Twist()
    vel_cmd.linear.x = 0.1
    vel_cmd.angular.z = diff_angel*0.01
    global vel_pub
    vel_pub.publish(vel_cmd)


if __name__ == "__main__":
    rospy.init_node("imu_node")
    imu_sub = rospy.Subscriber("/imu/data",Imu,ImuCallBack,queue_size=10)
    vel_pub = rospy.Publisher("/cmd_vel",Twist,queue_size=10)
    rospy.spin()