package com.wll

class PushToken {

    String appId//产品id
    String userId  //push 用户token
    String channelId
    String devId   //设备id
    String ver  //版本
    String dev //iphone ,ipad,android,winphone

    Date dateCreated
    Date lastUpdated
    Short status = 0 //未发送 ，1发送

    static constraints = {
    }
}
