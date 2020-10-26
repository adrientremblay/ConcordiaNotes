fn main() {
    // if let syntax
    let some_u8_value = Some(3);
    if let Some(3) = some_u8_value {
        println!("three");
    }
    // if syntax
    let some_u8_value = Some(3);
    if some_u8_value == Some(3) {
        println!("three");
    }
}
