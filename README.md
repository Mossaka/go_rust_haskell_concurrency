# go_rust_haskell_concurrency

A repo containing the resource code for a talk about go vs. rust vs. haskell about concurrency

## run

- mutex-hs:
  `stack run`
  > 1000
- mutex-go:
  `go build`
  `main`
  > n=[1000]
- mutex-rust:
  `cargo run`
  > Data: Mutex { data: 1000 }
