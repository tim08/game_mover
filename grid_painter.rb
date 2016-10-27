# Отрисовываем игровую сетку в терминале
class GridPainter

  def self.draw_grid_with_cursor(grid)
    grid_str = ''
    grid.structure.each.with_index(1) do |c, i|
      grid.cursor == i-1 ? grid_str << "\■ " : grid_str << "\□ "
      grid_str << "\n" if (i % grid.number_of_cells).zero?
    end
    puts grid_str
  end

end