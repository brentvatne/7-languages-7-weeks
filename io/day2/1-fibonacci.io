fib := method(n,
  if(n <= 1) then(return n)
  fib(n-1) + fib(n-2)
)

fib_loop := method(n,
  nums := list()
  i := 0
  while(i <= n,
    if (i == 0) then (nums append(0))
    if (i == 1) then (nums append(1))
    if (i > 1) then (nums append((nums at(i-1)) + (nums at(i-2))))
    i = i + 1
  )
  nums pop
)

fib(4) println
fib(16) println

fib_loop(4) println
fib_loop(16) println
