guesses := 0
guess := 0
previousGuess := 0
solved := false
numberToGuess := 50
standardIO := File standardInput

Number abs = method(if (self < 0, self = self * -1); return self)

Number closerTo := method(n, previousGuess,
  difference      := (self - n) abs;
  prevDifference := (previousGuess - n) abs;
  if (difference < prevDifference, return true, return false)
)

while (solved == false and guesses <= 10,
  guess := standardIO readLine asNumber
  if (guess == numberToGuess) then(solved = true) else(
    if (guesses == 0) then("Nice try, give it another shot!" println) else(
      if (guess closerTo(numberToGuess, previousGuess)) then("You're getting hotter!" println) else("You're getting colder!" println)
    )
  )
  previousGuess = guess
  guesses = guesses + 1
)

if (solved) then("Congrats! You've guessed the number!" println) else("Oh well, maybe next time" println)

