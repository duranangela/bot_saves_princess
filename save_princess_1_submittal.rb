def displayPathtoPrincess(n, grid)
  princess = []
  moves = n / 2
  solution = []

  grid.each_with_index do |line, index|
    if line.include?('p')
      princess << index
      princess << line.chars.index('p')
    end
  end

  moves.times do
    princess[0] == 0 ? solution << "UP\n" : solution << "DOWN\n"
    princess[1] == 0 ? solution << "LEFT\n" : solution << "RIGHT\n"
  end

  solution.each { |move| puts move }
end
