

def janken
  
  puts "じゃんけん..."
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"

  player_hand = gets.to_i
  program_hand = rand(4)
  
  jankens = ["グー","チョキ","パー","戦わない"]
  
  puts "pon!!"
  puts "--------------------"
  puts "あなた:#{jankens[player_hand]}, あいて:#{jankens[program_hand]}"
  
  if player_hand == program_hand
    puts "あいこで"
    return true
    
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0) || (program_hand == 3)
    puts "あなたの勝ち"
    puts "--------------------"
    
    puts "あっちむいて..."
    puts "0(上) 1(右) 2(下) 3(左)"
    
    player_direction = gets.to_i
    program_direction = rand(4)
    
    directions = ["上","右","下","左"]
    
    puts "ホイ!!"
    puts "--------------------"
    puts "あなた:#{directions[player_direction]}, あいて:#{directions[program_direction]}"
  
    if player_direction == program_direction
      puts "あなたの勝ち"
      puts "--------------------"
    else
      puts "残念"
      puts "--------------------"
    end
    
    
    return false
  else
    puts "あなたの負け"
    puts "--------------------"
    return false
  end
end

next_game = true


while next_game do
  next_game = janken
end