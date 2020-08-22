package linked_list;

import javax.swing.text.html.HTMLDocument;
import java.util.Iterator;

public class SinglyLinkedList<E> {

    private class Node {
       private E data;
       private Node next;

       public Node(E data) {
          this.data = data;
          this.next = null;
       }

      public E getData() {
        return this.data;
      }

      public Node next() {
          return this.next;
      }

      public boolean hasNext() {
         return this.next() != null;
      }

      public void setNext(Node n) {
           this.next = n;
      }
    }

    private Node head;
    private Node tail;

    // Constructor
    public SinglyLinkedList() {
        this.head = null;
        this.tail = null;
    }

    // Public Methods
    public void insertAtHead(E value) {
        Node newNode = new Node(value);

        if (this.head == null) {
           this.head = newNode;
           this.tail = this.head;
           return;
        }

        Node tmp = this.head;
        this.head = newNode;
        this.head.next = tmp;
    }

    public E removeAtHead() {
        if (this.head == null) return null;

        E data = this.head.data;
        this.head = this.head.next;
        return data;
    }

    public E removeAtTail() {
        if (this.tail == null) return null;

        Node trav = head;
        while(trav.next != tail) trav = trav.next;
        this.tail = trav;
        Node temp = this.tail.next;
        this.tail.next = null;
        return temp.data;
    }

    public void insertAtTail(E value) {
        Node newNode = new Node(value);

        if (this.tail == null) {
            this.head = newNode;
            this.tail = this.head;
            return;
        }

        this.tail.next = newNode;
        this.tail = newNode;
    }

    public Node search(E value) {
       Node trav = head;
       while (trav != null){
           if (trav.data.equals(value))
               return trav;

           trav = trav.next;
       }

       return null;
    }

    public E removeByValue(E value){
         Node trav = head;
         boolean found = false;
         while(trav.next != null){
             if (trav.next.data.equals(value)) {
                 found = true;
                 break;
             }
             trav = trav.next;
         }

         if (!found) return null;

        Node tmp = trav.next;
        trav.next = trav.next.next;
        return tmp.data;
    }

    public String toString() {
       StringBuilder sb = new StringBuilder();
       Node tmp = head;

       while (tmp.hasNext()) {
          sb.append("[" + tmp.data + "] -> " );

          tmp=tmp.next;
        }

       sb.append("[" + tmp.data + "] -> null");

       return sb.toString();
    }

    //@Override
//    public Iterator<E> iterator() {
//        return new java.util.Iterator<E>() {
//            public boolean hasNext() {
//                return trav.next != null;
//            }
//
//            public E next() {
//                trav = trav.next;
//                return trav.data;
//            }
//        };
//    }

}
