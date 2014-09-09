
# Play Paper Rock Scissors
# Choose one
# You picked ___ and computer picked ___
# Paper wraps rocks
# Rocks smashes scissors
# Scissors cuts Paper
# You win
# Computer win
# It is a tie
# Play Again


Options = {"Paper" => "Paper" , "Rocks" => "Rocks", "Scissors" => "Scissors" }

def prompt(msg)
  puts "==> #{msg}"
end

def end_game()
  prompt "Thank you for playing"
  Process.exit(0)
end

def cont()
  prompt "Would you like to continue? Yes/No"
  cont = gets.chomp.upcase
  if cont == "Yes" || cont == "Y"
    select()
  elsif cont == "No" || cont == "N"
    end_game
  else
    prompt "Invalid answer, please try again, yes or no?"
    cont()
  end
end

def select()
  print "Play Paper, Rocks, Scissors!"
  prompt "Choose one: Paper/Rocks/Scissors "
  choice = gets.chomp.upcase

  if choice == "PAPER" || choice == "P" || choice == "PAPERS"
    prompt "You chose Paper"
    paper()
  elsif choice == "ROCKS" || choice == "R" || choice == "ROCK"
    prompt "You chose Rocks"
    rock()
  elsif choice == "SCISSORS" || choice == "S" || choice == "SCISSOR"
    prompt "You chose Scissors"
    scissors()
  else
    puts "Invalid answer, please try again."
    select()
  end
end

def paper()
  if Options.keys.sample == "PAPER"
    puts "Computer chose Paper"		
    puts "It is a tie."
    cont()
  elsif Options.keys.sample == "SCISSORS"
    puts "Computer chose Scissors"		
    puts "The computer wins"
    cont()
  else Options.keys.sample == "ROCKS"
    puts "Computer chose Rocks"
    puts "You win."
    cont()
  end
end

def rock()
  if Options.keys.sample == "ROCKS"
    puts "Computer chose Rocks"
    puts "It is a tie."
    cont()
  elsif Options.keys.sample == "PAPER"
    puts "Computer chose Paper"	
    puts "The computer wins"
    cont()
  else Options.keys.sample == "SCISSORS"
    puts "Computer chose Scissors"	
    puts "You win."
    cont()
  end
end

def scissors()
  if Options.keys.sample == "SCISSORS"
    puts "Computer chose Scissors"			
    puts "It is a tie."
    cont()
  elsif Options.keys.sample == "ROCKS"
    puts "Computer chose Rocks"		
    puts "The computer wins"
    cont()
  else Options.keys.sample == "PAPER"
    puts "Computer chose Paper"			
    puts "You win."
    cont()
  end
end

select()












