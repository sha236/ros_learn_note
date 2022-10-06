#!/usr/bin/env python3
#coding=utf-8

import rospy
from std_msgs.msg import String

if __name__ == "__main__":
    rospy.init_node("chao_node")
    rospy.logwarn("Hello ROS! This is chao_node.")

    pub=rospy.Publisher("chao_msg",String,queue_size=10)
    rate=rospy.Rate(10)
    while not rospy.is_shutdown():
        rospy.loginfo("This is Chao_node.")
        msg=String()
        msg.data = "This is chao_node sending messages."
        pub.publish(msg)
        rate.sleep()