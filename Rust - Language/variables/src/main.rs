fn main() {
    // mutable variable
    let mut x = 5;
    println!("The value of x is: {}", x);
    x = 6;
    println!("The value of x is: {}", x);

    // constant variable
    const MAX_POINTS: u32 = 100_000;
    println!("Max Points: {}", MAX_POINTS);

    // variable shadowing
    let x = 5;
    let x = x + 1;
    let x = x * 2;
    println!("The value of x is: {}", x);

    // floats
    let x = 2.0; // f64
    let y: f32 = 4.2; // f32

    // booleans
    let t = true;
    let f: bool = false; // meme explicit type annotation

    // chars
    let c = 'Z';
    let z = 'z';
    let heart_eyed_cat = '😻';

    // tuple
    let tup: (i32, f64, u8) = (500, 6.4, 1);
    let (x, y, z) = tup; // decomposition
    println!("The value of y is: {}", y);

    let one = tup.2; // accessing single element
    println!("The value of one is: {}", one);

    // arrays
    let a: [i32; 5] = [1, 2, 3, 4, 5];
    println!("the 3rd element of a is: {}", a[2]); // accessing a single element
    let a = [3; 5]; // 5 3s
}
