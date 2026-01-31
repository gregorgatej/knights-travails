  MOVES = [
    [2, 1], [1, 2],
    [-1, 2], [-2, 1],
    [-2, -1], [-1, -2],
    [1, -2], [2, -1]
  ]

def knight_moves(start_pos, end_pos)
  queue = []
  visited = Set.new
  queue << [start_pos, [start_pos]]
  visited.add(start_pos)

  until queue.empty?
    current, path = queue.shift
    return path if current == end_pos
    
    valid_moves(current).each do |move|
      next if visited.include?(move)
      visited.add(move)
      queue << [move, path + [move]]
    end
  end

  nil
end

def valid_moves(pos)
  x, y = pos
  valid_moves = MOVES.map do |dx, dy|
    [x + dx, y + dy]
  end
  valid_moves.filter! { |x, y| (0..7).cover?(x) && (0..7).cover?(y) }
  valid_moves
end
