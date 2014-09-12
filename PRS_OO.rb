class Hands

  OPTIONS = {"p" => "Paper" , "r" => "Rock", "s" => "Scissors"}

end

class Human
  attr_accessor :name, :choice, :hand

  def initialize(name)
    @name = name
  end

  # def new_name(n)
  #   puts "What is your name?"
  #   name = gets.chomp
  #   puts "Hello, #{@name}, lets play Paper, Rock, Scissors"
  #   @name = n
  # end

  def choose_options
    begin
      puts "#{name}, please choose a hand: Paper, Rock, Scissors"
      choice = gets.chomp.downcase
    end until Hands::OPTIONS.keys.include?(choice)
    puts "You have chosen #{choice}"
  end
end

class Computer
  attr_accessor :name, :choice, :hand

  def initialize(m)
    @name = m
  end

  def computer_choose
    choice = Hands::OPTIONS.keys.sample
    puts "#{@name} has chosen #{choice}"
  end

end

class PRS #engine to orchestrate
  attr_accessor :player, :computer, :hands

  def initialize
    @player = Human.new("Bob")
    @computer = Computer.new("R2D2")
    @hands = Hands.new
  end

  def compare_hands
    if computer.computer_choose == player.choose_options
      puts "It is a tie"
    elsif (player.choose_options == 'p' && computer.computer_choose == 'r') || (player.choose_options == 'r' && computer.computer_choose == 's') || (player.choose_options == 's' && computer.computer_choose == 'p')
      puts "You Win!"
    else
      puts "Computer Wins!"
    end
  end

  def run
    # player.new_name
    player.choose_options
    computer.computer_choose
    compare_hands
  end

end

prs = PRS.new.run










