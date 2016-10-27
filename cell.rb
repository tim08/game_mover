class Cell

  attr_reader :coordinates

  def initialize(id, number_of_cells)
    @id = id
    @body = []
    @coordinates = [id / number_of_cells, id % number_of_cells]
  end


end