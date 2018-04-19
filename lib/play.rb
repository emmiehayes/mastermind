require 'pry'
require 'time'
require './lib/guess_checker'
require './lib/responder'

class Play
  include AnswerGenerator
  include GuessChecker
  include Responder

  attr_reader :guesses,
              :answer,
              :start_time

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
        puts cheat_response
      elsif user_input.length < 4
        puts short_response
      elsif user_input.length > 4
        puts long_response
      elsif user_input == @answer.join
        @guesses << user_input
        puts win_response
      else
        @guesses << user_input
        puts guess_feedback_response(user_input)
      end
      user_input = gets.chomp.downcase.strip
    end
    puts quit_response
  end

  def calculate_time_spent
    Time.now - @start_time
  end
end
