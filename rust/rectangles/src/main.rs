fn main() {
    let rect1 = (5, 12);

    println!("The area of the triangle is {} pixels.", area(rect1));
}

fn area(dimensions: (u32, u32)) -> u32 {
    dimensions.0 * dimensions.1
}
