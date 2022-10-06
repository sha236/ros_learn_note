#include <ros/ros.h>
#include <std_msgs/String.h>

void chao_callback(std_msgs::String msg);
void yao_callback(std_msgs::String msg);
int main(int argc, char *argv[])
{
    /* code */
    ros::init(argc,argv,"atr_1_node");

    ros::NodeHandle nh;
    ros::Subscriber sub = nh.subscribe("chao_msg",10,chao_callback);
    ros::Subscriber sub_2 = nh.subscribe("yao_msg",10,yao_callback);

    while(ros::ok())
    {
        ros::spinOnce();
    }
    return 0;
}

void chao_callback(std_msgs::String msg)
{
    ROS_INFO(msg.data.c_str());
}

void yao_callback(std_msgs::String msg)
{
    ROS_WARN(msg.data.c_str());
}