package com.example;

import com.google.common.truth.Truth;
import org.junit.Test;

public class MyLayer1DownstreamTest {

    @Test
    public void testSayHello(){
        MyLayer1DownstreamClass myLayer1DownstreamClass = new MyLayer1DownstreamClass();
        Truth.assertThat(myLayer1DownstreamClass.sayHello()).isEqualTo("one fish two fish");
    }
}
