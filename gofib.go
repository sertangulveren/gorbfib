package main

import "C"

//export Fib
func Fib(n C.int) C.int {
	if n <= 1 {
		return n
	}
	return Fib(n-1) + Fib(n-2)
}

func main() {}
