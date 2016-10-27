require_relative 'cell'
require_relative 'grid'
require_relative 'player'
require_relative 'grid_painter'

require 'io/console'

class GameMover

  def initialize
    print 'Enter number of cells: '
    @number_of_cells = gets
    @grid = Grid.new(@number_of_cells.to_i)
  end

  def start
    puts 'Press WASD to move, ESC to exit'
    loop do
      char = STDIN.getch
      break if char.ord == 27
      if char =~ /[w|a|s|d]/
        @grid.move_cursor(char)
      else
        puts 'Only WASD to move'
      end
      system('clear')
      GridPainter.draw_grid_with_cursor(@grid)
    end
  end

end

game = GameMover.new
game.start

