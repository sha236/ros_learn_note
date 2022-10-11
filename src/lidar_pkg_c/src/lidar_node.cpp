#include <ros/ros.h>
#include <sensor_msgs/LaserScan.h>
void LidarCallBack(const sensor_msgs::LaserScan msg)
{
    float fMidDist = msg.ranges[180];
    ROS_INFO("Front distance: %f",fMidDist);
}
int main(int argc, char *argv[])
{
    ros::init(argc,argv,"lidar_node");
    ros::NodeHandle n;
    ros::Subscriber lidar_sub = n.subscribe("/scan",10,&LidarCallBack);
    ros::spin();
    return 0;
}
