
class Game

  def initialize(hand1)
    @hand1 = hand1
    @hand2 = 0
    @results = {1 => "rock", 2 => "paper", 3 => "scissors"}
    @play = ""
    @result = ""
    @result_array = []
  end

  def play()
    ch = random123()
    @hand2 = @results[ch]
    whoWon(@hand1, @hand2)
  end

  def whoWon(p1Result, p2Result)
    @play = "You entered #{p1Result} and the computer played #{p2Result}"
    #puts @play
    if p1Result == p2Result
      @result = "its a draw!"
    elsif (p1Result == "rock" && p2Result == "scissors") || (p1Result == "paper" && p2Result == "rock") || (p1Result == "scissors" && p2Result == "paper")
      @result = "You beat the computer! #{p1Result} beats #{p2Result}"
    else
      @result =  "The computer won! #{p2Result} beats #{p1Result}"
    end
    return @result_array = [@play, @result]


  end

  def random123()
    return choice = rand(1..3)
  end

end
