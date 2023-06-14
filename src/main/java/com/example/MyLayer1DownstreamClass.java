package com.example;

import com.example.MyLayer1Upstream;
public class MyLayer1DownstreamClass {

    public String sayHello(){
        String downstream = "two fish";
        MyLayer1Upstream myLayer1Upstream = new MyLayer1Upstream();
        String result = myLayer1Upstream.sayHello() + " " + downstream;
        return result;
    }

}
