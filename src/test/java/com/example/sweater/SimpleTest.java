package com.example.sweater;

import org.junit.Assert;
import org.junit.Test;


public class SimpleTest {

    @Test
    public void test() {
        int x = 5;
        int y = 10;

        Assert.assertEquals(15, x + y);
        Assert.assertEquals(50, x * y);
    }

    @Test(expected = ArithmeticException.class)
    public void exception() {
        int i = 0;
        int j = 1/i;
    }
}
