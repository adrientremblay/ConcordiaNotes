fn main() {
    println!("Hello, world!");

    let user1 = User {
        email: String::from("someone@example.com"),
        username: String::from("somerusername123"),
        active: true,
        sign_in_count: 1,
    };
}

struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}
