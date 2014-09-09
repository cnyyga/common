package com.wll

/**
 * 推荐应用点击记录。
 *
 */
class RecommendClick {

    Recommend recommend //
    Product product
    String devId   //设备id
    String ver  //版本
    String dev //iphone ,ipad,android,winphone

    Date dateCreated

    static constraints = {
    }

    static mapping = {
        version(false)
    }
}
