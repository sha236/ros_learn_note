#!/usr/bin/env python3
#coding=utf-8

from math import sqrt

import rospy
from robot_msgs.msg import position_msg,user_control_msg
from geometry_msgs.msg import Twist

# 场地信息
v_weight = 2

orin_weight = 0.1
switch_distance = 0.2
H = 4
L = 2
hs = 0.2
ls = 0.4
h1 = 1
h2 = 1
h3 = 1
l1 = 1
dm = 0.4

P_points = [
            [ls,hs],    #P0 0
            [l1,h1-dm], #P1 1
            [l1+dm,h1], #P2
            [l1,h1+h2/2],   #P3
            [l1-dm,h1+h2],  #P4
            [l1,h1+h2+h3/2],    #P5
            [l1+dm,h1+h2+h3],   #P6
            [l1,h1+h2+h3+dm],   #P7
            [l1-dm,h1+h2+h3],   #P8
            [l1+dm,h1+h2],  #P9
            [l1-dm,h1]  #P10
            ]

P_order = [0,1,2,3,4,5,6,7,8,5,9,3,10,0]

class brain():
    def __init__(self,P_Points,P_order,v_weight,switch_distance):
        self.P_Points = P_Points
        self.P_order = P_order
        self.v_weight = v_weight
        self.switch_distance = switch_distance

        self.need_stop = 1
        self.target_point_number = 1
        self.position = [hs,ls]
        self.z_orin = 0

    def v_set(self):
        raw_v_x = self.P_Points[P_order[self.target_point_number]][0] - self.position[0]
        raw_v_y = self.P_Points[P_order[self.target_point_number]][1] - self.position[1]
        raw_size = sqrt(raw_v_x*raw_v_x+raw_v_y*raw_v_y)
        output_v_x = raw_v_x/raw_size*self.v_weight
        output_v_y = raw_v_y/raw_size*self.v_weight
        return [output_v_x,output_v_y]

    #设逆时针为正方向
    def orin_set(self):
        orin_speed = -orin_weight*self.z_orin
        return orin_speed

    def switch_point(self):
        if (self.position[0]-self.P_Points[self.target_point_number][0])*(self.position[0]-self.P_Points[self.target_point_number][0])+(self.position[1]-self.P_Points[self.target_point_number][1])*(self.position[1]-self.P_Points[self.target_point_number][1])<self.switch_distance*self.switch_distance:
            return True
        else:
            return False



def position_msg_callback(msg):

    global super_brain
    global vel_msg

    vel_msg.linear.x = 0
    vel_msg.linear.y = 0
    vel_msg.angular.z = 0

    super_brain.position[0] = msg.x_axis
    super_brain.position[1] = msg.y_axis
    super_brain.z_orin = msg.z_orin
    if not super_brain.need_stop:
        if not super_brain.target_point_number == 13:
            if super_brain.switch_point():
                super_brain.target_point_number+=1
                rospy.logwarn("%d",P_order[super_brain.target_point_number])
                vel_msg.linear.x,vel_msg.linear.y =  super_brain.v_set()
                vel_msg.angular.z = super_brain.orin_set()
                vel_pub.publish(vel_msg)
            else:
                vel_msg.linear.x,vel_msg.linear.y =  super_brain.v_set()
                vel_msg.angular.z = super_brain.orin_set()
                vel_pub.publish(vel_msg)
        else:
            if super_brain.switch_point:
                super_brain.need_stop = 1
            else:
                vel_msg.linear.x,vel_msg.linear.y =  super_brain.v_set()
                vel_msg.angular.z = super_brain.orin_set()
                vel_pub.publish(vel_msg)
    else:
        vel_msg.linear.x = 0
        vel_msg.linear.y = 0
        vel_msg.angular.z = 0
        vel_pub.publish(vel_msg)


def user_control_msg_callback(msg):
    global super_brain
    super_brain.need_stop = msg.need_stop
    super_brain.target_point_number = 1
    super_brain.position = super_brain.P_Points[0]
    

if __name__ == "__main__":
    super_brain = brain(P_points,P_order,v_weight,switch_distance)
    vel_msg = Twist()
    rospy.init_node("brain_node")
    sub_position_msgs = rospy.Subscriber("Position_msg",position_msg,position_msg_callback,queue_size=10)
    sub_user_control_msgs = rospy.Subscriber("User_Control_msg",user_control_msg,user_control_msg_callback,queue_size=10)
    vel_pub = rospy.Publisher("/cmd_vel",Twist,queue_size=10)
    rospy.spin()





