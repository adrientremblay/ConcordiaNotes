fn main() {
    println!("Hello, world!");

    let mut user1 = User {
        email: String::from("someone@example.com"),
        username: String::from("somerusername123"),
        active: true,
        sign_in_count: 1,
    };
    println!("Email is: {}", user1.email);
    user1.email = String::from("somoneelse@example.com");
    println!("Email is: {}", user1.email);
}

struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}
