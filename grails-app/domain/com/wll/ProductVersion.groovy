package com.wll

class ProductVersion {
    String ver // 版本 最新的版本号,e.g 1.2.1, IOS用此判断是否有版本更新
    Integer versionCode //android专用,用于版本判断是否有版本更新
    String size // 大小
    Date onlineDate //上线日期
    String message //更新消息
    boolean enabled = true //状态 :启用1 禁用0
    boolean forceUpdate //强制更新  ，“0” 或者“1”，0表示不需要强制更新至此版本，1表示需要强制更新至此版本

    Date dateCreated
    Date lastUpdated

    static belongsTo = [product:Product]

    static constraints = {
        ver()
        versionCode()
        size()
        onlineDate()
        message(nullable: true)
        forceUpdate()
        enabled()
        dateCreated()
        lastUpdated()
    }
    static mapping = {
        message type: 'text'
    }
}
