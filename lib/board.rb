class Board
  attr_accessor :cells

  def initialize()
    reset!
  end

  def reset!
    @cells = Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end
  
  def position(input)
    cells[input.to_i - 1]
  end 
  
  def update(input, player)
    cells[input.to_i - 1] = player.token
  end 
  
  def full?
    @cells.all? {|position| position != " "}
  end 
  
  def turn_count
    @cells.count {|token| token == "X" || token == "O"}
  end 
  
  def taken?(input)
    position(input) != " "
  end 
  
  def valid_move?(input)
    if input.to_i.between?(1,9) && position(input) == " "
      return true 
    else 
      return false 
    end 
  end 
end
  
    