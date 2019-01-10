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
    solution << (princess[0].zero? ? "UP\n" : "DOWN\n")
    solution << (princess[1].zero? ? "LEFT\n" : "RIGHT\n")
  end

  solution.each { |move| puts move }
end
