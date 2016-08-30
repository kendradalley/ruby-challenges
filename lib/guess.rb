# Challenge 4 - Guessing Game

# Create a program that asks the user to guess a number between 1 and 100. Once the user guesses a number, the program should say, higher, lower, or tell the user that he got the number correct. The user should continue to make guesses until he guesses correctly. Also, once the user guesses correctly, the program should print the number of guesses needed to arrive at the correct answer. Below is sample output:

puts "Guess a number between 0 and 1000"
tries = 0
answer = Random.rand(1..1000)

  def game(answer, tries)
    #needs guess to be local variable
  guess = gets.to_i
  if guess > answer
    puts "Number is lower than #{guess}. Guess again."
    tries += 1
  elsif guess < answer
    puts "Number is higher than #{guess}. Guess again."
    tries += 1
  elsif guess == answer
    puts "CORRECT! The number is #{answer}. It took you #{tries} tries"
    return
  end
  game(answer, tries)
end

game(answer, tries)

