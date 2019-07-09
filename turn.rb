require_relative "question"

class Turn
  attr_accessor :question

  def initialize()
    @question = Question.new(rand(10), rand(10))
  end

  def next
    puts "What is the sum of #{@question.number1} and #{@question.number2}?"
    user_answer = $stdin.gets.chomp

    if user_answer == @question.answer
      return true
    else 
      return false
    end

  end
end
