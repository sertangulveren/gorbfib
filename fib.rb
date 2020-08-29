require 'ffi'
require 'benchmark'

module Gofib
  extend FFI::Library
  ffi_lib './gofib.so'
  attach_function :Fib, [:int], :int
end

module Rubyfib
 def Rubyfib.Fib(n)
   return n if n <= 1
   Fib(n - 1) + Fib(n - 2)
 end
end

# init functions
Gofib.Fib(1)
Rubyfib.Fib(1)

n = 39
Benchmark.bm do |x|
  x.report { Gofib.Fib(n) }
  x.report { Rubyfib.Fib(n) }
end
