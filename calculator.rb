# Zaprojektuj i zaimplementuj klasę kalkulator tak aby zadziałał poniższy kod. W
# komentarzach przy każdej linijce jest opisany wynik jaki ma wypisać dana metoda po
# zastosowaniu na niej puts:

class Calculator
	attr_accessor :result, :history
	attr_reader :name
	def initialize(name)
		@name = name
		@result = 0
		@history = []
	end
 
 def add(number)
 	@result += number.to_i
 	@history << "add #{number} (result: #{result})"
 end
 
 def clear
 	@result = 0
 	@history << "clear (result: #{result})"
 end
 
 def substract(number)
 	
 	@result -= number.to_i
	@history << "substract #{number} (result: #{result})" 
 end
 
 def multiply(number)
 	@result *= number.to_i
 	@history << "multiply #{number} (result: #{result})"
 end
 
 def divide(number)
 	@result /= number.to_i
 	@history << "divide #{number} (result: #{result})"
 end
 
 def change_sign
 	@result *= -1
 	@history << "change_sign (result: #{result})"
 end
 
 def print_history
 	puts @history
 end
end

calculator = Calculator.new("CASIO")
puts calculator.name # prints CASIO
calculator.add(2)
calculator.add(3)
puts calculator.result # prints 5
calculator.add(10)
puts calculator.result # prints 15
calculator.clear # set result to 0
puts calculator.result # prints 0
calculator.substract(20)
puts calculator.result # prints -20
calculator.multiply(3)
puts calculator.result # prints -60
calculator.divide(4)
puts calculator.result # prints -15
calculator.change_sign
puts calculator.result # prints 15
calculator.print_history