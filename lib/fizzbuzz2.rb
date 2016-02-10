
def fizzbuzz(number)
  if number.class != Fixnum
    "ERROR"
  elsif
    number % 3 == 0 && number % 5 == 0
    "fizzbuzz"
  else
    number % 3 == 0 ? "fizz" : "buzz"
  end
end
