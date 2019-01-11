class Bot

  def initialize(n, r, c, grid)
    @n = n
    @r = r
    @c = c
    @grid = grid
  end

  def find_princess
    princess = []
    @grid.each_with_index do |row, index|
      if row.include?('p')
        princess << index
        princess << row.chars.index('p')
      end
    end
    princess
  end

end
