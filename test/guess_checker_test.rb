require './lib/guess_checker'
require './test/test_helper'

class GuessCheckerTest < Minitest::Test

  def test_it_counts_intersecting_letters
    user_input = "rrgy"
    answer = ['y', 'y', 'y', 'b']
    format_input = user_input.split('')
    correct_letters = format_input & answer

    assert_equal 1, correct_letters.length
  end

  def test_it_counts_when_letters_are_positioned_correctly
    user_input = "rrgy"
    answer = ['y', 'y', 'y', 'b']
    format_input = user_input.split('')
    correct_position = answer.zip(format_input).map { |answer, guess| answer == guess}

    assert_equal 0, correct_position.count(true)
  end
end
