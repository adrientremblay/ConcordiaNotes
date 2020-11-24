fn main() {
    let mut s = String::from("foo");
    s.push_str("bar");
    println!("{}", s);

    let s1 = String::from("Hello, ");
    let s2 = String::from("world!");
    let s3 = s1 + &s2;

    println!("{}", s2);
}
