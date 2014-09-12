class Hand
  include Comparable

  attr_reader :value

  def initialize(v)
    @value = v
  end

  def <=> (another_hand) #question, how is UFO referenced to compare_hands?
    if @value == another_hand.value
      0
    elsif (@value == 'p' && another_hand.value == 'r') || (@value == 'r' && another_hand.value == 's') || (@value == 's' && another_hand.value == 'p')
      1
    else
      -1
    end
  end

  def display_winning_message
    case @value
    when 'p'
      puts "Paper wraps Rock!"
    when 'r'
      puts "Rock smashes Scissors!"
    when 's'
      puts "Scissors cuts Paper!"
    end
  end

end

class Player

  attr_accessor :hand, :name #name is needed to get & set name, hand is needed to get & set name of human and computer through inheritance.

  def initialize(n)
    @name = n
  end

  def to_s
    "#{name} currently has a choice of #{choice}"
  end

end

class Human < Player

  def pick_hand
    begin
      puts "Which hand will you choose: (r, p, s)"
      c = gets.chomp.downcase
    end until Game::CHOICES.keys.include?(c)

    self.hand = Hand.new(c) #setting a new hand
  end

end

class Computer < Player

  def pick_hand
    self.hand = Hand.new(Game::CHOICES.keys.sample) #setting a new hand
  end

end

class Game

  CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

  attr_reader :player, :computer

  def initialize
    @player = Human.new("Bob")
    @computer = Computer.new("Hal-1000")
  end

  def compare_hands
    if player.hand == computer.hand #the player class and the hand class
      puts "It's a tie!"
    elsif player.hand > computer.hand
      player.hand.display_winning_message #instantiate method within hand class
      puts "#{player.name}, you win!"
    else
      computer.hand.display_winning_message
      puts "#{computer.name} wins!"
    end
  end

  def play
    begin
      player.pick_hand
      puts "#{player.name} pick #{CHOICES[player.hand.value]}"
      computer.pick_hand
      puts "#{computer.name} picks #{CHOICES[computer.hand.value]}"
      compare_hands
    end
  end

end

game = Game.new.play








