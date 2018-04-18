class Play
  include AnswerGenerator

  def initialize
    @guesses = []
    @answer = generate_answer
  end

  def start_game
     user_input = gets.chomp.downcase.strip
    until user_input == 'q' || user_input == 'quit'
      if user_input == 'c' || user_input == 'cheat'
        puts "The answer was #{@answer.join}."
      elsif user_input.length < 4
        puts "Your guess is too short."
      elsif user_input.length > 4
        puts "Your guess is too long."
      elsif user_input === answer
        puts "You guessed the sequence!"
      end
    end
    exit
  end
end
