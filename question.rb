
class Question

  attr_accessor :number1, :number2, :answer
  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
    @answer = @number1 + @number2
  end
end

