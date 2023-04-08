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

  def initialize(player_name)
    @player_name = player_name
    @number_range = 1..20
  end

  def ask_question
    @number_1, @number_2 = @number_range.to_a.sample(2)
    @answer = @number_1 + @number_2

    puts "#{@player_name}: What does #{@number_1} plus #{@number_2} equal?"
    print "> "
    user_answer = gets.chomp.to_i

    if @answer == user_answer
      puts "#{@player_name}: #{CORRECT_PHRASES.sample}"
      true
    else
      puts "#{@player_name}: #{WRONG_PHRASES.sample}"
      false
    end
  end
end