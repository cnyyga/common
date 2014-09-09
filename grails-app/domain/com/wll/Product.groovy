package com.wll

class Product {

    String id
    String name //产品名称
    Platforms platform
    String url //链接地址
    boolean enabled = true //状态 :启用1 禁用0
    String description

    Date dateCreated
    Date lastUpdated

    static hasMany = [productVersions:ProductVersion]

    static constraints = {
        name()
        platform()
        url()
        description(nullable: true)
        enabled()
    }

    static mapping = {
        id generator:'uuid'
    }
}
