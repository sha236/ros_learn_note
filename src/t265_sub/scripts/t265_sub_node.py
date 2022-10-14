#!/usr/bin/env python3
#coding=utf-8

import rospy
from nav_msgs.msg import Odometry
from tf.transformations  import euler_from_quaternion

def T265_CallBack(msg):
    quaternon = [
        msg.pose.pose.orientation.x,
        msg.pose.pose.orientation.y,
        msg.pose.pose.orientation.z,
        msg.pose.pose.orientation.w
    ]
    (row,pitch,yaw) = euler_from_quaternion(quaternon)
    rospy.loginfo("Pose x,y,z: %.2f %.2f %.2f",msg.pose.pose.position.x,msg.pose.pose.position.y,msg.pose.pose.position.z)
    rospy.logwarn("Row: %.2f, Pitch: %.2f, Yaw: %.2f",row,pitch,yaw)


if __name__ == "__main__":
    rospy.init_node("t265_sub_node")
    rospy.Subscriber("/camera/odom/sample",Odometry,T265_CallBack,queue_size= 10)
    rospy.spin()
