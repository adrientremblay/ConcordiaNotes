fn main() {
    println!("Hello, world!");

    let _v: Vec<i32> = Vec::new();

    let _v = vec![1, 2, 3];

    let mut v = Vec::new();

    v.push(5);
    v.push(6);
    v.push(7);
    v.push(8);

    // gets a reference
    let third: &i32 = &v[2];
    println!("The third element is {}", third);

    // gets an Option<&T>
    match v.get(10) {
        Some(third) => println!("The third element is {}", third),
        None => println!("There is no third element"),
    };

    for e in &v {
        println!("{}", e);
    }

    for e in &mut v {
        *e += 50;
        println!("{}", e);
    }

    enum SpreadSheetCell {
        Int(i32),
        Float(f64),
        Text(String),
    }

    let row = vec![
        SpreadSheetCell::Int(3),
        SpreadSheetCell::Text(String::from("blue")),
        SpreadSheetCell::Float(10.12),
    ];
}
