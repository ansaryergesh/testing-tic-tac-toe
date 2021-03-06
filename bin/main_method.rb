def display(grid)
    puts '---------'
    puts "#{grid[0][0]} | #{grid[0][1]} | #{grid[0][2]}"
    puts '---------'
    puts "#{grid[1][0]} | #{grid[1][1]} | #{grid[1][2]}"
    puts '---------'
    puts "#{grid[2][0]} | #{grid[2][1]} | #{grid[2][2]}"
    puts '---------'
  end
  
  def valid_name(name)
    loop do
      valid = name.empty?
      return name unless valid
    end
  end
  
  def valid_piece(piece)
    loop do
      arr = %w[X O]
      return piece if arr.include? piece
  
      puts 'Enter a piece again! It should be x or o'
      piece = gets.chomp.upcase!
    end
  end
  
  def players_info
    puts 'Name of 1st Player: '
    name = gets.chomp
    player1 = Player.new(valid_name(name))
    puts "Please select there some symbol 'x' or 'o'"
    piece = gets.chomp.upcase!
    player1.piece = valid_piece(piece)
    puts 'Please enter 2nd Player name'
    name = gets.chomp
    player2 = Player.new(valid_name(name))
    player2.piece = player1.piece == 'X' ? 'O' : 'X'
    [player1, player2]
  end