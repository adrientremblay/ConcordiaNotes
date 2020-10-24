fn main() {
    let number = 7;

    if number < 5 {
        println!("condition was true");
    } else {
        println!("condition was false");
    }

    if number != 0 {
        println!("number is not zero!");
    } else if number % 3 == 0 {
        println!("number is dibisible by 3!");
    } else {
        println!("number is boring...");
    }
}
