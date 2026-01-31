  MOVES = [
    [2, 1], [1, 2],
    [-1, 2], [-2, 1],
    [-2, -1], [-1, -2],
    [1, -2], [2, -1]
  ]

def knight_moves(start_pos, end_pos)
  #TODO
end

def valid_moves(pos)
  x, y = pos
  neighbors = MOVES.map do |dx, dy|
    [x + dx, y + dy]
  end
  neighbors.filter! { |x, y| (0..7).cover?(x) && (0..7).cover?(y) }
  neighbors
end
