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

end
