CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
puts "Welcome to Paper, Rock, Scissors!"

def display_winning_message(winning_choice)
	case winning_choice
	when 'p'
		puts "Paper wraps Rock!"
	when 'r'
		puts "Rock smashes Scrissors!"
	when 's'
		puts "Scissors cuts Paper!"
	end
end

loop do
	begin
		puts "Pick one: (p,r,s):"
		player_choice = gets.chomp.downcase
	end until CHOICES.keys.include?(player_choice)

	computer_choice = CHOICES.keys.sample

	if player_choice == computer_choice
		puts "It's a tie!"
	elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
		display_winning_message(player_choice)
		puts "You win!"
	else
		display_winning_message(computer_choice)
		puts "Computer wins!"
	end

	puts "Play again? (y/n)"
	break if gets.chomp.downcase != 'y'

end

puts "Good bye!"

# Things learnt & reinforced
# 1) "include" method
# 2) "sample" method
# 3) do/end does imply block. Only so after a method call like each/do, times/do, but not for like for/in/do or loop/do.
# 4) keys to be referenced to obtain values
# 5) upcase for variables that are fixed like "CHOICES"
# 6) Notice referencing i.e. player_choice, computer_choice, display_winning_choice, winning_choice


