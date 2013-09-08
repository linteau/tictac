class Player
  def initialize(name)
    @name = name
    @moves = []
  end
  
  def say_name()
    puts "%s" % @name
  end
  
  def go_first?(x)
    if x == 0
      puts "Since the number is #{x} player X goes first."
      @first = true
    elsif x == 1
      puts "Since the number is #{x} player O goes first."
      @first = false
    else
      over()
    end  
  end
  
  def move(board)
    move = rand(board)
  end
  
  def random_number()
    number = rand(0..1)
  end
  
  def over()
    puts "Something went wrong, please start over."
  end
  
  def move(board)
    board = board
    board = board.shuffle
    move = board.pop()
    @moves = @moves.push(move)
    if win?(@moves) == true
      print "#{@moves}\n"
      Process.exit(0)
    end
    if board.length == 0
      puts "No one won the game..."
    end
    return board      
  end
  
  def win?(moves)
    @moves = moves
    # vertical wins
    if (@moves.include?(0)  and @moves.include?(3) and @moves.include?(6) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    elsif (@moves.include?(1)  and @moves.include?(4) and @moves.include?(7) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    elsif (@moves.include?(2)  and @moves.include?(5) and @moves.include?(8) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    # horizontal wins
    elsif (@moves.include?(0)  and @moves.include?(1) and @moves.include?(2) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    elsif (@moves.include?(3)  and @moves.include?(4) and @moves.include?(5) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    elsif (@moves.include?(6)  and @moves.include?(7) and @moves.include?(8) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    # diagonal wins
    elsif (@moves.include?(0)  and @moves.include?(4) and @moves.include?(8) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    elsif (@moves.include?(6)  and @moves.include?(4) and @moves.include?(2) and @moves.length == 3)
      puts "#{@name} wins!"
      return true
    else
      puts "You haven't won yet!"
    end
  end
end

def over()
  puts "Something went wrong, please start over."
end

board = [0,1,2,3,4,5,6,7,8]
x = Player.new("player X")
x.say_name()

o = Player.new("player O")
o.say_name()

  x_first = x.go_first?(x.random_number)
 
 if  x_first == true
   puts "This is true"
    xmove = x.move(board)
    omove = o.move(xmove)
    xmove = x.move(omove)
    omove = o.move(xmove)
    xmove = x.move(omove)
    omove = o.move(xmove)
    xmove = x.move(omove)
    omove = o.move(xmove)
    xmove = x.move(omove)
 elsif  x_first == false
   puts"this is false"
   omove = o.move(board)
   xmove = x.move(omove)
   omove = o.move(xmove)
   xmove = x.move(omove)
   omove = o.move(xmove)
   xmove = x.move(omove)
   omove = o.move(xmove)
   xmove = x.move(omove)
   omove = o.move(xmove)
 else
   over()
 end
 
 
# first = player_x.go_first?(firstx, firsto)
# puts first

winner = false

# while winner == false
#   player_x_moves = []
#   player_o_moves = []
#   
#   if first == true && winner == false
#     x_moves = rand(0..9)
#     player_x_moves.push(x_moves)
#     
#     if player_x_moves.include? (0 and 3 and 5) or (1 and 4 and 7) or (2 and 5 and 8) or (0 and 1 and 2) or (3 and 4 and 5) or (6 and 7 and 8) or (0 and 4 and 8) or (6 and 4 and 2)
#       puts "Player X wins!"
#       winner = true
#       puts player_x_moves
#     else
#       winner = false
#     end 
#     
#     o_moves = rand(0..9)
#     player_o_moves.push(o_moves)
#     
#     if player_o_moves.include? (0 and 3 and 5) or (1 and 4 and 7) or (2 and 5 and 8) or (0 and 1 and 2) or (3 and 4 and 5) or (6 and 7 and 8) or (0 and 4 and 8) or (6 and 4 and 2)
#       puts "Player 0 wins!"
#       winner = true
#       puts player_o_moves
#     else
#       winner = false
#     end
#     
#   elsif first == false && winner == false
#     o_moves = rand(0..9)
#     player_o_moves.push(o_moves)
#     
#     if player_o_moves.include?  (0 and 3 and 5) or (1 and 4 and 7) or (2 and 5 and 8) or (0 and 1 and 2) or (3 and 4 and 5) or (6 and 7 and 8) or (0 and 4 and 8) or (6 and 4 and 2)
#       puts player_o_moves
#       puts "Player 0 wins!"
#       winner = true
#     else
#       winner = false
#     end
#     
#     x_moves = rand(0..9)
#     player_x_moves.push(x_moves)
#     
#     if player_x_moves.include?  (0 and 3 and 5) or (1 and 4 and 7) or (2 and 5 and 8) or (0 and 1 and 2) or (3 and 4 and 5) or (6 and 7 and 8) or (0 and 4 and 8) or (6 and 4 and 2)
#       puts "Player X wins!"
#       winner = true
#       puts player_x_moves
#     else
#       winner = false
#     end 
#   else
#     puts "something went wrong"
#   end
# end
  