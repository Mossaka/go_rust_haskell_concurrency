use std::sync::{Arc, Mutex};
use std::thread;

fn main() {
    let safe_data = Arc::new(Mutex::new(0));
    let handlers = (0..1000)
        .into_iter()
        .map(|_| {
            let data = safe_data.clone();
            thread::spawn(move || {
                *data.clone().lock().unwrap() += 1;
            })
        })
        .collect::<Vec<std::thread::JoinHandle<_>>>();
    for thread in handlers {
        thread.join().unwrap();
    }
    println!("Data: {:?}", safe_data);
}
