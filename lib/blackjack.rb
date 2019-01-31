def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand_num = rand(1..11)
end

def display_card_total(card_total)
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
  card_1 = deal_card
  card_2 = deal_card
  card_total = card_1 + card_2
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  
  if answer == "s"
    return card_total
  elsif answer == "h"
    new_card = deal_card
    card_total = card_total + new_card
  else invalid_command
    prompt_user
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
###########second##########################################

def runner
  welcome
  first_total = initial_round
  last_total = hit?(first_total)
  until last_total > 21
    last_total = last_total + hit?(last_total)
    display_card_total(last_total)
  end
  end_game(last_total)
end
    
