List myAverage := method(
  foreach(n, if (n type != "Number", Exception raise("myAverage cannot be called on lists that include non-numeric items")))
  (self sum) / (self size)
)


list(2,2,2,2) myAverage println
list(20,0) myAverage println

e := try(
  list(1,2,"hi",4) myAverage println
)
e catch(Exception,
  "Exception called correctly" println
)
