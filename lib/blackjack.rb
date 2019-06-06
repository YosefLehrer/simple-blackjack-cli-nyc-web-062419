def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  displayCardTotal = deal_card + deal_card
  display_card_total(displayCardTotal)
  displayCardTotal
end

def hit?(card_total)
  prompt_user
  this = get_user_input 
  if this == 's'
    card_total
  elsif this == 'h'
    card_total = card_total += deal_card
  else
    invalid_command
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  initial_round
  until card_total > 21
  hit?
end
    
