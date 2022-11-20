// Auto-generated. Do not edit!

// (in-package robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class user_control_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.need_stop = null;
      this.serial_port_status = null;
    }
    else {
      if (initObj.hasOwnProperty('need_stop')) {
        this.need_stop = initObj.need_stop
      }
      else {
        this.need_stop = 0;
      }
      if (initObj.hasOwnProperty('serial_port_status')) {
        this.serial_port_status = initObj.serial_port_status
      }
      else {
        this.serial_port_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type user_control_msg
    // Serialize message field [need_stop]
    bufferOffset = _serializer.int64(obj.need_stop, buffer, bufferOffset);
    // Serialize message field [serial_port_status]
    bufferOffset = _serializer.int64(obj.serial_port_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type user_control_msg
    let len;
    let data = new user_control_msg(null);
    // Deserialize message field [need_stop]
    data.need_stop = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [serial_port_status]
    data.serial_port_status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_msgs/user_control_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2bfc4ee5d247898e4b10bf74cd215fa3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 need_stop
    int64 serial_port_status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new user_control_msg(null);
    if (msg.need_stop !== undefined) {
      resolved.need_stop = msg.need_stop;
    }
    else {
      resolved.need_stop = 0
    }

    if (msg.serial_port_status !== undefined) {
      resolved.serial_port_status = msg.serial_port_status;
    }
    else {
      resolved.serial_port_status = 0
    }

    return resolved;
    }
};

module.exports = user_control_msg;
