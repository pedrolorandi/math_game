require './lib/game.rb'
require './lib/math_question.rb'
require './lib/player.rb'
require './lib/scoreboard.rb'

question = MathQuestion.new("Player 1")

if question.ask_question
  puts "Safe"
else
  puts "-1"
end