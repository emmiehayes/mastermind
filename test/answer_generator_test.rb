require 'minitest/autorun'
require 'minitest/pride'
require './lib/answer_generator'
require 'pry'

class AnswerGeneratorTest < Minitest::Test

  def test_it_generates_a_four_letter_answer
      assert_equal 4, AnswerGenerator.generate_answer.length
  end
end
