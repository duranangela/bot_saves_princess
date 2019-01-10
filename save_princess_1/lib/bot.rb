class Bot

  def initialize(n, grid)
    @n = n
    @grid = grid
  end

  def find_princess
    princess = ""
    @grid.each_with_index do |row, r_ind|
      row.chars.each_with_index do |col, c_ind|
        if col == "p"
          princess = [r_ind, c_ind]
          break
        end
      end
    end
    princess
  end

  def displayPath
    moves = @n/2
    solution = []
    princess = find_princess

    if princess[0] == 0
      (moves).times do
        solution << "UP\n"
      end
    else
      (moves).times do
        solution << "DOWN\n"
      end
    end

    if princess[1] == 0
      (moves).times do
        solution << "LEFT\n"
      end
    else
      (moves).times do
        solution << "RIGHT\n"
      end
    end

  solution
  end

end
