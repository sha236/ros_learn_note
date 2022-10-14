#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
#include <geometry_msgs/Twist.h>

geometry_msgs::Twist vel_msg;
ros::Publisher vel_pub;

void LidarCallBack(const sensor_msgs::LaserScan msg)
{
    float fMidDist = msg.ranges[180];
    ROS_INFO("Front distance: %f",fMidDist);
    if(fMidDist<2)
    {
        vel_msg.angular.z = 1;
    }
    else
    {
        vel_msg.angular.z = 0;
    }
    vel_pub.publish(vel_msg);
}
int main(int argc, char *argv[])
{
    ros::init(argc,argv,"lidar_node");
    ros::NodeHandle n;
    ros::Subscriber lidar_sub = n.subscribe("/scan",10,&LidarCallBack);
    vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel",10);
    vel_msg.linear.x = 0.1;
    vel_msg.linear.y = 0;
    vel_msg.linear.z = 0;
    vel_msg.angular.x = 0;
    vel_msg.angular.y = 0;
    vel_msg.angular.z = 0;
    ros::spin();
    return 0;
}
