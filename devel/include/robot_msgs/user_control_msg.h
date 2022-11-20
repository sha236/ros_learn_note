// Generated by gencpp from file robot_msgs/user_control_msg.msg
// DO NOT EDIT!


#ifndef ROBOT_MSGS_MESSAGE_USER_CONTROL_MSG_H
#define ROBOT_MSGS_MESSAGE_USER_CONTROL_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_msgs
{
template <class ContainerAllocator>
struct user_control_msg_
{
  typedef user_control_msg_<ContainerAllocator> Type;

  user_control_msg_()
    : need_stop(0)
    , serial_port_status(0)  {
    }
  user_control_msg_(const ContainerAllocator& _alloc)
    : need_stop(0)
    , serial_port_status(0)  {
  (void)_alloc;
    }



   typedef int64_t _need_stop_type;
  _need_stop_type need_stop;

   typedef int64_t _serial_port_status_type;
  _serial_port_status_type serial_port_status;





  typedef boost::shared_ptr< ::robot_msgs::user_control_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_msgs::user_control_msg_<ContainerAllocator> const> ConstPtr;

}; // struct user_control_msg_

typedef ::robot_msgs::user_control_msg_<std::allocator<void> > user_control_msg;

typedef boost::shared_ptr< ::robot_msgs::user_control_msg > user_control_msgPtr;
typedef boost::shared_ptr< ::robot_msgs::user_control_msg const> user_control_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_msgs::user_control_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_msgs::user_control_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::robot_msgs::user_control_msg_<ContainerAllocator1> & lhs, const ::robot_msgs::user_control_msg_<ContainerAllocator2> & rhs)
{
  return lhs.need_stop == rhs.need_stop &&
    lhs.serial_port_status == rhs.serial_port_status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::robot_msgs::user_control_msg_<ContainerAllocator1> & lhs, const ::robot_msgs::user_control_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace robot_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::user_control_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_msgs::user_control_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::user_control_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_msgs::user_control_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::user_control_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_msgs::user_control_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_msgs::user_control_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2bfc4ee5d247898e4b10bf74cd215fa3";
  }

  static const char* value(const ::robot_msgs::user_control_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2bfc4ee5d247898eULL;
  static const uint64_t static_value2 = 0x4b10bf74cd215fa3ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_msgs::user_control_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_msgs/user_control_msg";
  }

  static const char* value(const ::robot_msgs::user_control_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_msgs::user_control_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 need_stop\n"
"int64 serial_port_status\n"
;
  }

  static const char* value(const ::robot_msgs::user_control_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_msgs::user_control_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.need_stop);
      stream.next(m.serial_port_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct user_control_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_msgs::user_control_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_msgs::user_control_msg_<ContainerAllocator>& v)
  {
    s << indent << "need_stop: ";
    Printer<int64_t>::stream(s, indent + "  ", v.need_stop);
    s << indent << "serial_port_status: ";
    Printer<int64_t>::stream(s, indent + "  ", v.serial_port_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_MSGS_MESSAGE_USER_CONTROL_MSG_H
