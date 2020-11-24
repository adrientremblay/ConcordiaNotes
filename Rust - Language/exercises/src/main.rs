use std::collections::HashMap;

fn main() {
    let mut numbers: Vec<u8> = vec![1, 2, 3, 4, 5, 6, 7, 32, 5, 3, 6, 7];

    // calculating mean
    let mut sum: u32 = 0;
    for n in &numbers {
        sum += *n as u32;
    }
    let mean = sum / numbers.len() as u32;
    println!("Mean: {}", mean);

    // calculating median
    let middle = numbers.len() / 2;
    numbers.sort();
    let median = numbers[middle];
    println!("Median: {}", median);

    // calculating mode
    let mut score = HashMap::new();

    for n in &numbers {
        let entry = score.entry(n).or_insert(0);
        *entry += 1;
    }

    let mut maxval = 0;
    let mut max = 0;
    for (key, value) in &score {
        if value > &max {
            maxval = **key;
            max = *value;
        }
    }

    println!("Mode: {}", maxval);

    let mut strings = [
        String::from("Hello"),
        String::from("Ass"),
        String::from("Hay"),
        String::from("Apple"),
    ];

    for (i, string) in strings.iter_mut().enumerate() {
        let first_char = string.to_lowercase().chars().next().unwrap();
        match first_char {
            'a' | 'e' | 'i' | 'o' | 'u' => *string = format!("{}-hay", string),
            _ => {
                *string = format!("{}-{}ay", string, first_char);
                string.remove(0);
            }
        }
        println!("{}", string);
    }
}
