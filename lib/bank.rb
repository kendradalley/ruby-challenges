### Challenge 3 - Bank Transactions

# Create a prompt that asks the user if they would like to display their balance, withdraw or deposit. Write three methods to perform these calculations and output the result to the user. Here is a sample output:


def deposit(balance)
  puts "How much would you like to deposit?"
  amount = gets.to_i
  balance += amount
  puts "Your current balance is #{balance}"
  puts "Are you done?"
  answer = gets.chomp.downcase
    if answer == "yes" || answer == 'y'
      return
    else
      prompt(balance)
    end
end

def withdraw(balance)
  puts "How much would you like to withdraw?"
  amount = gets.to_i
  balance -= amount
  puts "Your current balance is #{balance}"
  puts "Are you done?"
  answer = gets.chomp.downcase

    if answer == "yes" || answer == 'y'
      return
    else
      prompt(balance)
    end
end

def check_balance(balance)
  puts "Your current balance is #{balance}"
  puts "Are you done?"
  answer = gets.chomp.downcase
    if answer == "yes" || answer == 'y'
      return
    else
      prompt(balance)
    end
end

# def complete_transaction()
#   puts "Are you done?"
#   amount = gets.chomp.downcase

#   if amount == 'y' || amount == 'yes'
#     return
#   else 

def prompt(balance)

puts "What would you like to do? (deposit, withdraw or check_balance)"
amount = gets.chomp.downcase

if amount == "deposit"
  deposit(balance)
elsif amount == "withdraw"
  withdraw(balance)
elsif amount == "check_balance" || amount == 'balance'
  check_balance(balance)
end
end

prompt(1000)






