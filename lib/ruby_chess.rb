module RubyChess

  class Board

    attr_accessor :spaces
    attr_accessor :spaces_id

    def initialize
      @pieces = []
      @spaces = Array.new
      @spaces_id = Array.new
    end

    def add_piece(piece, x, y)
      @pieces << [piece, x, y]
    end

    def create_space(piece, x, y)
      @spaces << [piece, x, y]
    end

    def fetch_piece(x,y)
      if ((x == 0 || x == 7)&&(y == 0 || y == 7))
        return Castle.new
      elsif(x == 1 || x == 6) 
        return Pawn.new
      else
        return "empty"
      end
    end

    def give_id(letter,number)
      
    end

  end

  class Pawn
    
    def say_hello
      puts "hello"
    end

  end
  
  class Castle

  end 
end


