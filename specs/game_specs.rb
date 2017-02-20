require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < Minitest::Test

  def setup
    @game = Game.new("paper")
  end
  
  def test_play
    array = @game.play()
    puts array[0]
    puts array[1]

  end



end 



