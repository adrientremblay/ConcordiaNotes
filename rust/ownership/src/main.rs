fn main() {
    let x = 2; // stored on stack
               // the String::from method requests the memory it needs from the heap
    let mut s = String::from("hello"); // String, stored on heap
    s.push_str(", world!");
    println!("{}", s);
    block();
} // x is popped off stack as the scope has ended
  // Also the scope s was seclared in is over so it is no longer valid

fn block() {
    // both on the stack
    // "bind 5 to x, then copy the value of x and bind it to y"
    let x = 5;
    let y = x;

    // strings comprised of two parts:
    //  data on the stack(name, ptr, len, capacity) which points to...
    //  data on heap
    // when we s1 assign s2, the DATA is copied, so the pointer to the heap data is copied.
    // s1 and s2 now refer to the same data on the heap
    let s1 = String::from("hello");
    let s2 = s1;

    // cannot call this code because s1 is now an 'invalidated reference'
    // s1 has not been 'shallow copied' to s2, it has been 'moved'
    //println!("{}", s1);

    // s2 is a clone of s1
    // this is an explicit deep copy, so even the heap data is copied
    let s1 = String::from("hello");
    let s2 = s1.clone();
    println!("s1 is: {}", s1);
    println!("s2 is: {}", s1);

    takes_ownership(s2);
    makes_copy(y);
    let s1 = gives_ownership();
    let s2 = takes_and_gives_back(s1);
}

fn takes_ownership(some_string: String) {
    // some_string comes into scope
    println!("{}", some_string);
} // Here, some_string goes out of scope and `drop` is called. The backing
  // memory is freed.

fn makes_copy(some_integer: i32) {
    // some_integer comes into scope
    println!("{}", some_integer);
} // Here, some_integer goes out of scope. Nothing special happens.

fn gives_ownership() -> String {
    // gives_ownership will move its
    // return value into the function
    // that calls it

    let some_string = String::from("hello"); // some_string comes into scope

    some_string // some_string is returned and
                // moves out to the calling
                // function
}

// takes_and_gives_back will take a String and return one
fn takes_and_gives_back(a_string: String) -> String {
    // a_string comes into
    // scope

    a_string // a_string is returned and moves out to the calling function
}

fn return_mutliple() -> (String, usize) {
    (String::from("hello"), 12)
}
