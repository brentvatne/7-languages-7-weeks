normalDivide := Number getSlot("/")

Number / = method(denom, if (denom == 0) then (return 0) else (return (self normalDivide(denom))))

(5 / 0) println
(10 / 2) println
