module GuessChecker


  def check_for_correct_letters(user_input)
    format_input = user_input.split('')
    correct_letters = format_input & @answer
    correct_letters.length
  end

  def check_for_correct_position(user_input)
    format_input = user_input.split('')
    correct_position = @answer.zip(format_input).map { |answer, guess| answer == guess}
    correct_position.count(true)
  end
end
