def display_board(board)
  i = 0
  2.times do
    puts " #{board[i * 3]} | #{board[i * 3 + 1]} | #{board[i * 3 + 2]} "
    puts "-----------"
    i += 1
  end
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  end
  true
end

def valid_move?(board, index)
  if index.betweem(0, 8)
    if !position_taken?(board, index)
      return ture
  end
  false
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, token='X')
  if valid_move?(board, index)
    board[index] = token
  end
end
