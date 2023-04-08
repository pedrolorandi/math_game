class Game
  def initialize(player1_name, player2_name)
    @player1 = Player.new(player1_name)
    @player2 = Player.new(player2_name)
    @total_lives = @player1.lives
  end

  def start
    game_loop(@player1)
  end

  private

  def game_loop(current_player)
    question = MathQuestion.new(current_player.name)
  
    unless question.ask_question
      current_player.decrement
    end
    
    puts "P1: #{@player1.lives}/#{@total_lives} vs P2: #{@player2.lives}/#{@total_lives}"

    if current_player.lives <= 0
      winner = current_player == @player1 ? @player2 : @player1
      puts "#{winner.name} wins with a score of #{winner.lives}/#{@total_lives}"
      puts "----- GAME OVER -----"
      puts "Good bye!"
      return
    end

    puts "----- NEW TURN -----"
    next_player = current_player == @player1 ? @player2 : @player1
    game_loop(next_player)
  end
end