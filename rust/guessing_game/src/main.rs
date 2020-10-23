use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
    let mut min = 1;
    let mut max = 100;

    println!("Guess the number!");

    let secret_number = rand::thread_rng().gen_range(min, max + 1);

    loop {
        println!("Please input your guess:");
        println!("Psst... The number is between {} and {}.", min, max);

        let mut guess = String::new();
        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read line");
        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => continue,
        };

        println!("You guessed: {}", guess);

        match guess.cmp(&secret_number) {
            Ordering::Less => {
                println!("Too small!");
                min = guess + 1;
            }
            Ordering::Greater => {
                println!("Too Big!");
                max = guess - 1;
            }
            Ordering::Equal => {
                println!("You Win!");
                break;
            }
        }
    }

    println!("The secret number was: {}.", secret_number);
}
