fn main() {
    // loop is equivalent to a while(true) loop
    loop {
        println!("again");
        break;
    }

    // loop as expression
    let mut counter = 0;
    let result = loop {
        counter += 1;

        if counter == 10 {
            break counter * 2; // breaks and returns the value after
        }
    };
    println!("The result is {}", result);

    // while loop
    let mut number = 3;

    while number != 0 {
        println!("{}!", number);

        number -= 1;
    }

    let a = [10, 20, 30, 40, 50];
    let mut index = 0;

    while index < 5 {
        println!("the value is: {}", a[index]);

        index += 1;
    }

    // for loop
    for element in a.iter() {
        println!("The value is: {}", element);
    }

    // Range loop
    for number in (1..4).rev() {
        println!("{}!", number);
    }
    println!("LIFTOFF!!!");
}
