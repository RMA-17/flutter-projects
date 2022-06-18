package com.rmaproject.testmultiplatform

class Greeting {
    fun greeting(): String {
        return "Hello, ${Platform().platform}!"
    }
}