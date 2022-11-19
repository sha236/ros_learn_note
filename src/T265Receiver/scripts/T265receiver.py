#!/usr/bin/env python3
#coding=utf-8

import rospy
from robot_msgs.msg import position_msg
from nav_msgs.msg import Odometry
import math
from tf.transformations import euler_from_quaternion

#用户自定义场地信息
hs = 0.2
ls = 0.4
#用户自定义T265x轴与车y轴的夹角（T265x轴方向-车y轴方向）(弧度制)
included_angle = 0

def T265ReceiveCallBack(msg):
    global posi_msg
    posi_msg.y_axis = msg.pose.pose.position.x*math.cos(included_angle) - msg.pose.pose.position.y*math.sin(included_angle)+ hs
    posi_msg.x_axis = msg.pose.pose.position.x*math.sin(included_angle) + msg.pose.pose.position.y*math.cos(included_angle)+ ls
    
    quaternion = [
        msg.pose.pose.orientation.x,
        msg.pose.pose.orientation.y,
        msg.pose.pose.orientation.z,
        msg.pose.pose.orientation.w,
    ]
    (row,pitch,yaw) = euler_from_quaternion(quaternion)
    posi_msg.z_orin = yaw
    position_pub.publish(posi_msg)


if __name__ == "__main__":
    rospy.init_node("T265receiver_node")
    T265_sub = rospy.Subscriber("/camera/odom/sample",Odometry,T265ReceiveCallBack,queue_size= 10)
    position_pub = rospy.Publisher("Position_msg",position_msg,queue_size= 10)
    posi_msg = position_msg()
    rospy.spin()