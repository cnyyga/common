package com.wll

/**
 * 精品推荐.
 *
 */
class Recommend {

    String name //名称
    String content //介绍
    String url//下载地址
    String iconPath//图标

    Platforms platform
    String ver // 版本
    String size // 大小
    Date onlineDate // 上线日期
    boolean enabled = true //状态 :启用1 禁用0

    Date dateCreated
    Date lastUpdated

    static constraints = {
        name()
        iconPath()
        platform nullable: true
        ver nullable: true
        size nullable: true
        url()
        onlineDate nullable: true
        content nullable: true
        enabled()

    }

    static mapping = {
        content sqlType: 'text'
    }
}
