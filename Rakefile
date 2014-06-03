require 'pp'
require './lib/ruby_chess'
include RubyChess

task :print_board do
  RubyChess::Board.print_board
end

task :print_hello do
  pawn = RubyChess::Pawn.new
  pawn.say_hello
end

task :board_test do
  board = Board.new

  8.times do |n| 
    board.add_piece(Pawn.new, n, 1)
    board.add_piece(Pawn.new, n, 6) 
  end
  board.add_piece(Castle.new,0,0)
  board.add_piece(Castle.new,0,7)
  board.add_piece(Castle.new,7,0)
  board.add_piece(Castle.new,7,7)
  
  
  pp board
end

task:spaces_test do
  board = Board.new
  8.times do |x|
    board.spaces[x] = Array.new
    board.spaces_id[x] = Array.new
    8.times do |y|
      #board.create_space("empty", x, y)
      board.spaces[x][y] = board.fetch_piece(x,y)
      board.spaces_id[x][y] = (x+65).chr + (y+1).to_s
    end
  end
  pp board.spaces_id
end


