package com.wll

/**
 * Created by IntelliJ IDEA.
 * User: wwma
 * Date: 14-2-19 下午2:02
 * .
 */
public enum Platforms {
    iphone(1,'iphone'),
    android(0,'android'),
    winphone(2,'winphone')

    int id
    String label

    Platforms(int id,String label) {
        this.id = id
        this.label = label
    }
}