package com.company;

import array.DynamicArray;
import linked_list.SinglyLinkedList;

import java.util.Date;

public class Main {

    public static void main(String[] args) {
        SinglyLinkedList<Integer> test = new SinglyLinkedList<Integer>();
        test.insertAtHead(1);
        test.insertAtHead(2);
        test.insertAtHead(3);
        test.insertAtTail(5);
        test.insertAtTail(6);
        test.insertAtHead(7);
        test.removeAtTail();
        test.removeAtTail();
        test.removeAtHead();
        test.removeByValue(2);
        test.removeByValue(1);
        System.out.println(test);
        test.removeAtTail();
        System.out.println(test);
    }
}
