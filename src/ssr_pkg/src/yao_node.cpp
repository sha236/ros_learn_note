#include <ros/ros.h>
#include <std_msgs/String.h>

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"yao_node");
    printf("Hello ROS! I'm yao!\n");

    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<std_msgs::String>("yao_msg",10);

    std_msgs::String msg;

    ros::Rate loop_rate(10);
    while (ros::ok)
    {
        printf("Keep on!\n");
        msg.data = "This is yao sensor\r\n";
        pub.publish(msg);
        loop_rate.sleep();
    }
    
    return 0;
}
