use std::collections::HashMap;

fn main() {
    let mut line = String::new();
    while (true) {
        println!("What do you want to do?:");
        std::io::stdin().read_line(&mut line).unwrap();
        line = line.to_lowercase();

        let words = line.split_whitespace();

        println!("{}", words.iter().next());
    }
}
