
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
	cont = gets.chomp
	if cont == "Yes"
		select()
	elsif cont == "No"
		end_game
	else
		prompt "Invalid answer, please try again, yes or no?"
	cont()
	end
end

def select()
	print "Play Paper, Rocks, Scissors!"
	prompt "Choose one: Paper/Rocks/Scissors "
	choice = gets.chomp

	if choice == "Paper"
		prompt "You chose Paper"
		paper()
	elsif choice == "Rocks"
		prompt "You chose Rocks"
		rock()
	elsif choice == "Scissors"
		prompt "You chose Scissors"
		scissors()
	else
		puts "Invalid answer, please try again."
		select()
	end
end

def paper()
	if Options.keys.sample == "Paper"
		puts "Computer chose Paper"		
		puts "It is a tie."
		cont()
	elsif Options.keys.sample == "Scissors"
		puts "Computer chose Scissors"		
		puts "The computer wins"
		cont()
	else Options.keys.sample == "Rocks"
		puts "Computer chose Rocks"
		puts "You win."
		cont()
	end
end

def rock()
	if Options.keys.sample == "Rocks"
		puts "Computer chose Rocks"
		puts "It is a tie."
		cont()
	elsif Options.keys.sample == "Paper"
		puts "Computer chose Paper"	
		puts "The computer wins"
		cont()
	else Options.keys.sample == "Scissors"
		puts "Computer chose Scissors"	
		puts "You win."
		cont()
	end
end

def scissors()
	if Options.keys.sample == "Scissors"
		puts "Computer chose Scissors"			
		puts "It is a tie."
		cont()
	elsif Options.keys.sample == "Rocks"
		puts "Computer chose Rocks"		
		puts "The computer wins"
		cont()
	else Options.keys.sample == "Paper"
		puts "Computer chose Paper"			
		puts "You win."
		cont()
	end
end

select()












