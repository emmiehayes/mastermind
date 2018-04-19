require 'pry'
require 'time'
require './lib/guess_checker'

class Play
  include AnswerGenerator
  include GuessChecker

  attr_reader :guesses,
              :answer

  def initialize
    @guesses = []
    @answer = generate_answer
    @start_time = Time.now
  end

  def start_game
    user_input = gets.chomp.downcase.strip
    until user_input == 'q' || user_input == 'quit'
      puts @answer
      if user_input == 'c' || user_input == 'cheat'
        puts "The answer was #{@answer.join}."
      elsif user_input.length < 4
        puts "Your guess is too short."
      elsif user_input.length > 4
        puts "Your guess is too long."
      elsif user_input == @answer.join
        @guesses << user_input
        win_message
      else
        @guesses << user_input
        guess_feedback(user_input)
      end
      user_input = gets.chomp.downcase.strip
    end
    exit
  end

  def calculate_time_spent
    Time.now - @start_time
  end

  def win_message
    puts "Congratulations! You guessed the sequence #{@answer.join} in #{@guesses.length} guesses over #{calculate_time_spent/60} minutes, #{calculate_time_spent%60} seconds. Would you like to (p)lay or (q)uit?"
      Mastermind.new.start
  end

  def guess_feedback(user_input)
    puts "Your guess: #{user_input}."
    puts "This guess has #{check_for_correct_letters(user_input)} of the correct elements with #{check_for_correct_position(user_input)} of the letters in the correct position.  You've taken #{@guesses.length} guess. Take another guess..."
  end
end
