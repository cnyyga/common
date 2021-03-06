package com.wll

class Feedback {

    Product product//产品id
    String ver  //版本
    String content //反馈信息
    boolean status = false //0false=未处理，1true已经处理
    String devId //设备id
    Date dateCreated
    String dev //iphone,ipad,android,winphone
    Date updateDate //处理日期
    String pushMessage

    static constraints = {
        content()
        product()
        dateCreated()
        ver()
        dev()
        devId()
        pushMessage(nullable: true)
        updateDate(nullable: true)
        status()
    }

    static mapping = {
        content sqlType: 'TEXT'
        pushMessage sqlType: 'TEXT'
    }
}
