class Grid

  attr_reader :structure, :cursor, :number_of_cells

  def initialize(number_of_cells)
    @structure = []
    @number_of_cells = number_of_cells
    (number_of_cells**2).times { |e| @structure << Cell.new(e, number_of_cells) }
    @cursor = 0
  end

  def move_cursor(key)
    case key
      when 'w'
        puts 'up'
        @cursor -= @number_of_cells
      when 's'
        puts 'down'
        @cursor += @number_of_cells
      when 'a'
        puts 'left'
        @cursor -= 1
      when 'd'
        puts 'right'
        @cursor += 1
    end
  end


end

