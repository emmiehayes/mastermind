module AnswerGenerator

  def generate_answer
    letters = ['r','r','r','r','g','g','g','g','b','b','b','b','y','y','y','y']
    letters.sample(4)
  end
end


  # used this code to test the method in answer_generator_test
  # def AnswerGenerator.generate_answer
  #   letters = ['r','r','r','r','g','g','g','g','b','b','b','b','y','y','y','y']
  #   sequence = letters.sample(4)
  # end
