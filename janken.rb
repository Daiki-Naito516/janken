puts "じゃんけん、、、"
puts "0(グー)1(チョキ)2(パー)3(戦わない)"


def janken

  player_hand = gets.to_i
  program_hand = rand(3)
  jankens = [ "グー", "チョキ", "パー", "戦わない" ]
  
  
  puts "ほい！"
  puts "--------------------"
  puts "あなた:#{jankens[player_hand]}をだしました"
  puts "相手:#{jankens[program_hand]}をだしました"
  
  if player_hand == program_hand
    puts "あいこでー"
    return true
    
  elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)    
    @janken_result = "win"
    return false
    # return yubisashi
    
  else
    @janken_result = "lose"
    return false
    # return yubisashi
  end
end


next_game = true
while next_game
  next_game = janken
end

acchimuitehoi = false
while acchimuitehoi
  acchimuitehoi = yubisashi
end

def yubisashi
  puts "------------------------"
  puts "あっちむいてー"
  puts "0(上)1(下)2(左)3(右)"
  
  player_yubi = gets.to_i
  program_yubi = rand(4)
  
  yubi = ["上","下","左","右"]
  
  puts "ほい"
  puts "--------------------"
  puts "あなた:#{yubi[player_yubi]}をだしました"
  puts "相手:#{yubi[program_yubi]}をだしました"
  
  if (player_yubi == program_yubi) && (@janken_result == "win")
    puts "あなたの勝利です"
    # return false
  else if (player_yubi == program_yubi) && (@janken_result == "lose")
    puts "あなたの負けです"
    # return false
  else
    return janken
  end
  end
end