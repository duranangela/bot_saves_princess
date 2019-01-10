class Bot

  def initialize(n, grid)
    @n = n
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

  def displayPath
    moves = @n/2
    solution = []
    princess = find_princess

    moves.times do
      solution << (princess[0].zero? ? "UP\n" : "DOWN\n")
      solution << (princess[1].zero? ? "LEFT\n" : "RIGHT\n")
    end

    solution
  end

end
