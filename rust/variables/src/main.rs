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
}
