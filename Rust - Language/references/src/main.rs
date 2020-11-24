fn main() {
    let mut s1 = String::from("hello");

    let r1 = &mut s1;
    // let r2 = &mut s1; can only have one mutale reference to a piece of data in the same scope at one time
    // can get around this by using curly brackets
    {
        let r2 = &mut s1;
    }
    // println!("{} {}", r1, r2);

    // also cannot borrow a reference as mutable and unmutable at the same time
    let mut s = String::from("hello");

    let r1 = &s; // no problem
    let r2 = &s; // no problem
                 // let r3 = &mut s; // BIG PROBLEM
                 // println!("{}, {}, and {}", r1, r2, r3);

    let len = calculate_length(&s1); // we are passing a reference to s1
                                     // so taking ownership is not needed

    println!("The length of '{}' is {}.", s1, len);

    change(&mut s1);
}

fn calculate_length(s: &String) -> usize {
    s.len()
} // Here, s goes out of scope. But because it does not have ownership of what
  // it refers to, nothing happens.
  // whole thing called borrowing
  // borrowed variables are immutable by default

fn change(some_string: &mut String) {
    // mutable reference
    some_string.push_str(", world");
}
