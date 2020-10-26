fn main() {
    println!("The area of the triangle is {} pixels.", area(5, 12));
}

fn area(width: u32, height: u32) -> u32 {
    width * height
}
