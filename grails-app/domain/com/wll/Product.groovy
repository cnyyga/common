package com.wll

class Product {

    String name //产品名称
    Platforms platform
    String url //链接地址
    boolean enabled = true //状态 :启用1 禁用0
    String description
    Date dateCreated

    static hasMany = [productVersions:ProductVersion]

    static constraints = {
    }

    static mapping = {
        id generator:'uuid'
    }
}
