class Fizzbuzz

  def fizzbuzz(n)
	  (1..n).each do |i|
	  	  if i % 3 == 0 && i % 5 == 0
			  puts "FizzBuzz"
		  elsif  i % 3 == 0
		  	  puts "Fizz"
		  elsif i % 5 == 0
			  puts "Buzz"

		  else
			  puts i
		  end
	  end
  end

end
f = Fizzbuzz.new
f.fizzbuzz(60)
