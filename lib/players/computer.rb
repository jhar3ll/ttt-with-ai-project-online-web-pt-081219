module Players
  class Computer < Player
    def move(board)
      move = nil 
      
      unless board.taken?
      move = "5"
    end 
  end 
 end 
end 
   