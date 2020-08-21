package com.company;

import array.DynamicArray;

import java.util.Date;

public class Main {

    public static void main(String[] args) {
        DynamicArray<Integer> testDA = new DynamicArray<Integer>();
        testDA.append(1);
        testDA.append(2);
        testDA.append(3);

        testDA.delete(2);

        System.out.println(testDA);
    }
}
