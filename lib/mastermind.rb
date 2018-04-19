require './lib/responder'

class Mastermind
  extend Responder
  include Responder

  puts welcome_response

  def start
    user_input = gets.chomp.downcase.strip
    until user_input == 'q' || user_input == 'quit'
      if user_input == 'p' || user_input == 'play'
        puts play_response
        Play.new.start_game
      elsif user_input == 'i' || user_input == 'instructions'
        puts instruction_response
      end
      user_input = gets.chomp.downcase.strip
    end
    puts quit_response
  end
end
