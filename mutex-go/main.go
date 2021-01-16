package main

import (
	"fmt"
	"sync"
	"time"
)

func main() {
	mu := &sync.Mutex{}
	n := 0
	for i := 0; i < 1000; i++ {
		go func() {
			mu.Lock()
			n++
			mu.Unlock()
		}()
	}
	time.Sleep(2 * time.Second)
	fmt.Printf("n=[%d]\n", n)
}
