puts "じゃんけん、、、"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"

def janken

  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = [ "グー", "チョキ", "パー", "戦わない" ]
  
  
  puts "--------------------"
  puts "あなた:#{jankens[player_hand]}をだしました"
  puts "相手:#{jankens[program_hand]}をだしました"
  
  if player_hand == program_hand
    puts "あいこでー"
    return true
    
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
    puts "あっちむいて"
    puts "0(上),1(下),2(左),3(右)"
    # return false
    return yubisashi
    
  else
    puts "あっちむいて"
    puts "0(上),1(下),2(左),3(右)"
    # return false
    return yubisashi
    
  end
end

next_game = true
while next_game
  next_game = janken
end

def yubisashi
  player_yubi = gets.to_i
  program_yubi = rand(4)
  yubisashi = ["上","下","左","右"]
  
  puts "--------------------"
  puts "あなた:#{yubisashi[player_yubi]}をだしました"
  puts "相手:#{yubisashi[program_yubi]}をだしました"
  
  if player_yubi == program_yubi
    puts "あなたの勝利です"
  else
    puts "引き分けです"
    return janken
    
  end
end



