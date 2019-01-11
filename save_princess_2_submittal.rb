def nextMove(n, r, c, grid)
  princess = []

  grid.each_with_index do |row, index|
    if row.include?('p')
      princess << index
      princess << row.chars.index('p')
    end
  end

  if r > princess[0]
    puts 'UP'
  elsif r < princess[0]
    puts 'DOWN'
  else
    c > princess[1] ? (puts 'LEFT') : (puts 'RIGHT')
  end

end
