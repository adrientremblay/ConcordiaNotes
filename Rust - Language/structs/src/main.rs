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

    let user2 = build_user(String::from("someone@example.com"), String::from("rustman"));

    let user2 = User {
        email: String::from("another@example.com"),
        username: String::from("anotherusername567"),
        active: user1.active,
        sign_in_count: user1.sign_in_count,
    };

    let user2 = User {
        email: String::from("another@example.com"),
        username: String::from("anotherusername567"),
        ..user1
    };

    let black = Color(0, 0, 0);
}

fn build_user(email: String, username: String) -> User {
    User {
        email,
        username,
        active: true,
        sign_in_count: 1,
    }
}

struct User {
    username: String,
    email: String,
    sign_in_count: u64,
    active: bool,
}

// tuple structs
struct Color(i32, i32, i32);
struct Point(i32, i32, i32);
