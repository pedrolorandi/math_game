class MathQuestion
  CORRECT_PHRASES = [
    "Correct!",
    "Yes, that's right!",
    "Good job, you got it!",
    "Absolutely correct!",
    "Well done, that's the right answer!"
  ].freeze

  WRONG_PHRASES = [
    "Nice try, genius!",
    "Nope, try again!",
    "Better luck next time!",
    "Seriously? No!",
    "Not even close!"
  ].freeze

  def initialize(player)
    @player = player
  end

  def ask_question
    number_1 = rand(1..20)
    number_2 = rand(1..20)
    answer = number_1 + number_2

    puts "#{@player}: What does #{number_1} plus #{number_2} equal?"
    user_answer = gets.chomp.to_i

    if answer == user_answer
      puts CORRECT_PHRASES.sample
      true
    else
      puts WRONG_PHRASES.sample
      false
    end
  end
end