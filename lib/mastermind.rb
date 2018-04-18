class Mastermind
puts "\e[H\e[2J"
puts  'Welcome to MASTERMIND. Would you like to (p)lay, read the (i)nstructions, or (q)uit?'

  def start
    user_input = gets.chomp.downcase.strip
    until user_input == 'q' || user_input == 'quit'
      case
      when user_input == 'p' || user_input == 'play'          then play
      when user_input == 'i' || user_input == 'instructions'  then instruct
      end
      user_input = gets.chomp.downcase.strip
    end
    quit
  end

  def play
    puts "\e[H\e[2J"
    puts 'I have generated a beginner sequence with four elements:(r)ed, (g)reen, (b)lue, and (y)ellow.  Use (q)uit at any time to end the game. What is your guess?'
    Play.new.start_game
  end

  def instruct
    puts "\e[H\e[2J"
    puts  """
          \nMastermind is a game in which the you, the user, tries to guess the code generated by the computer.
          \nStep 1: Type play or p in the terminal and your computer will generate a sequence for you to guess.
          \nStep 2: Submit your guess.  Your guess should consist of (4) letters: (r)ed, (g)reen, (b)lue, and (y)ellow, in any order.
          \nStep 3: Hit enter.
          \nStep 4: Mastermind will provide you with feedback regarding your guess.
          \n\tExample Feedback: Your guess 'rrgb' has 3 of the correct elements with 2 in the correct positions.  You've taken 1 guess.
          \nStep 5: Go back to Step 2 and repeat
          \nWould you like to (p)lay or (q)uit?
          """
  end

  def quit
    puts "\e[H\e[2J"
    puts 'Thank you for playing.'
  end
end