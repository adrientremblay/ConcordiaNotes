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

    // if is an expression and can be used for lets
    let condition: bool = true;
    let number = if condition { 5 } else { 6 };
    println!("The value of number is: {}", number);
}
