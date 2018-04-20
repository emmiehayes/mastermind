require './lib/answer_generator'
require './test/test_helper'

class AnswerGeneratorTest < Minitest::Test

  def test_it_generates_a_four_letter_answer
    letters = ['r','r','r','r','g','g','g','g','b','b','b','b','y','y','y','y']
    letters.sample(4)

    assert_equal 4, letters.sample(4).length
  end
end
