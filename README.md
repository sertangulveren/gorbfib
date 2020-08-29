# Working with Golang Libraries on Ruby instance.

This is the example of embedding Golang functions to Ruby instance.

## Fibonacci Benchmark
Imported a fibonacci function that writen in Golang using the `ffi` gem.   
With the same logic, The same fibonacci function was written with Ruby.

Benchmark results were obtained with the `benchmark` module.
#### Results:

➜ ruby fib.rb 

| Library | user     | system   | total    | real         |
| ------- | -------- | -------- | -------- | ------------ |
| Golang  | 0.327982 | 0.000629 | 0.328611 | ( 0.328333 ) |
| Ruby    | 4.624183 | 0.006257 | 4.630440 | ( 4.639693 ) |


I'm not sure how accurate or fair this comparison is. I have no idea what results will occur in the long run. It cannot be used as a scientific resource!

If you think there is a mistake, please share it with me: sertangulveren@gmail.com
