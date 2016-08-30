
### Challenge 1 - Calculator


puts 'What calculation would you like to do: add, subtract, multiply, or divide?' 
method = gets.chomp

puts 'What is the first number?'
# no line break and convert to integer
num1 = gets.chomp.to_i

puts 'What is the second number'
# no line break and convert to integer
num2 = gets.chomp.to_i

def calculate(calculation, num1, num2)
  answer = 0
  if calculation == 'add'
    answer = num1 + num2
  elsif calculation == 'subtract'
    answer = num1 - num2
  elsif calculation == 'multiply'
    answer = num1 * num2
  elsif calculation == 'divide'
    answer = num1 / num2
  else
    puts "Not a valid request"
    return
  end
  puts "Your result is #{answer}"
end

calculate(method, num1, num2)