a = "1000000"
puts a.length
=>7


a = "unicorn"
puts a.reverse
=>nrocinu


class FizzBuzz
	def initialize(a, b)
		if a < b
			@small = a
			@big = b
		else
			@small = b
			@big = a
		end 
	end
	

	def fizz_buzz
		puts "small: #{@small}"
		puts "big: #{@big}"
		arr = []
		(@small..@big).each do |number|
			if number % 3 == 0 && number % 5 == 0	
				arr << "FizzBuzz" 
			elsif number % 3 == 0
				arr << "Fizz" 
			elsif  number % 5 == 0
				arr << "Buzz"
			else
				arr << number
			end
		end

		arr
	end
end

fizz_buzz = FizzBuzz.new(3, 15)
p fizz_buzz.fizz_buzz



class Range
	def initialize(x, y)
		@lower_point = x
		@upper_point = y
		@is_valid = false	
		@number_array = []
	end

	def is_valid?
		@is_valid = true if @lower_point <= @upper_point
		return @is_valid
	end	

	def get_lower_point
		return @lower_point
	end

	def get_upper_point
		return @upper_point
	end

	def get_number_array
		return @number_array
	end
end

class ClosedRange < Range
	def get_number_array
		for i in @lower_point..@upper_point do
			@number_array.push(i)
		end	
		super
	end	
	def sum_of_range
		sum = 0
		for i in @number_array do
			sum += i
		end

		return sum
	end

	def contains(closed_range_2)
		if @lower_point <= closed_range_2.get_lower_point 
			&& @upper_point >= closed_range_2.get_upper_point
		
			true
		else 
			false
		end
	end
end

cr = ClosedRange.new(3, 10)
cr.is_valid?
cr.get_number_array
#puts cr.get_number_array.to_s
#puts cr.sum_of_range
cr2 = ClosedRange.new(4, 9)
puts cr.contains(cr2)








