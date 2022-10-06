#include <ros/ros.h>
#include <std_msgs/String.h>

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"chao_node");
    printf("Hello ROS!\n");

    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("chao_msg",10);

    std_msgs::String msg;

    ros::Rate loop_rate(10);
    while (ros::ok)
    {
        printf("Keep on!\n");
        msg.data = "This is Chao sensor\r\n";
        pub.publish(msg);
        loop_rate.sleep();
    }
    
    return 0;
}
