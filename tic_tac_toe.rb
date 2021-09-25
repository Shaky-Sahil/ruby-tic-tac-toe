class Game
    attr_accessor :cell_1, :cell_2, :cell_3, :cell_4, :cell_5,
     :cell_6, :cell_7, :cell_8, :cell_9 
    def initialize
        @cell_1 = "1"
        @cell_2 = "2"
        @cell_3 = "3"
        @cell_4 = "4"
        @cell_5 = "5"
        @cell_6 = "6"
        @cell_7 = "7"
        @cell_8 = "8"
        @cell_9 = "9"
    end
    def show_board
        puts "#{@cell_1}|#{@cell_2}|#{@cell_3}"
        puts "-----"
        puts "#{@cell_6}|#{@cell_5}|#{@cell_4}"
        puts "-----"
        puts "#{@cell_7}|#{@cell_8}|#{@cell_9}"
        puts "\s"
    end
    def check_game
        if (@cell_1 == @cell_2 && @cell_1 == @cell_3)
            puts "hooray player #{@cell_3} won!"
            return true
        elsif (@cell_4 == @cell_5 && @cell_5 == @cell_6)
            puts "hooray player #{@cell_6} won!"
            return true
        elsif (@cell_7 == @cell_8 && @cell_8 == @cell_9)
            puts "hooray player #{@cell_8} won!"
            return true
        elsif (@cell_1 == @cell_6 && @cell_6 == @cell_7)
            puts "hooray player #{@cell_1} won!"
            return true
        elsif (@cell_2 == @cell_5 && @cell_5 == @cell_8)
            puts "hooray player #{@cell_5} won!"
            return true
        elsif (@cell_3 == @cell_4 && @cell_4 == @cell_9)
            puts "hooray player #{@cell_3} won!"
            return true
        elsif (@cell_1 == @cell_5 && @cell_5 == @cell_9)
            puts "hooray player #{@cell_1} won!"
            return true
        elsif (@cell_3 == @cell_5 && @cell_5 == @cell_7)
            puts "hooray player #{@cell_3} won!"
            return true
        else
            return false
        end
    end
    def make_move(position, choice)
        case position
        when 1
            if @cell_1 != "1"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_1 = choice
        when 2
            if @cell_2 != "2"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_2 = choice 
        when 3
            if @cell_3 != "3"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_3 = choice 
        when 4
            if @cell_4 != "4"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_4 = choice 
        when 5
            if @cell_5 != "5"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_5 = choice 
        when 6
            if @cell_6 != "6"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_6 = choice 
        when 7
            if @cell_7 != "7"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_7 = choice 
        when 8
            if @cell_8 != "8"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_8 = choice 
        when 9
            if @cell_9 != "9"
                puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
                puts "\s\nEnter the position again"
                self.show_board
                return 0
            end
            @cell_9 = choice 
        else
            puts "\s\n!!!!! INVALID CELL CHOSEN !!!!!"
            puts "\s\nEnter the position again"
            self.show_board
            return 0
        end
        self.show_board
        return 1
    end
    
end

def play_game
    board = Game.new
    while true
        board.show_board
        puts "player 'o' make your move"
        puts "hint: type in the cell number to choose the position"
        move_status = 0
        while move_status == 0
            position = gets.chomp.to_i
            move_status = board.make_move(position,"o")
        end
        result = board.check_game()
        if result == true
            return 0
        end
        puts "player 'x' make your move"
        puts "hint: type in the cell number to choose the position"
        move_status = 0
        while move_status == 0
            position = gets.chomp.to_i
            move_status = board.make_move(position,"x")
        end
        result = board.check_game()
        if result == true
            return 0
        end
    end
end
play = "y"
while play == "y"
    play_game()
    puts "Enter 'y' to play again and 'n' to exit"
    play = gets.chomp.downcase
end