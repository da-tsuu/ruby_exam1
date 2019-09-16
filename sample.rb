class Player
  def hand
      puts "数字を入力してください。\n0:グー\n1:チョキ\n2:パー"
      player_hand = gets.chomp
      # byebug
#while true
   if player_hand !~ /^[0-2]{1}$/
     #!= "0\n" || player_hand != "1\n" || player_hand != "2\n"
    puts "0~2の数字を入力してください"
    #puts "数字を入力してください。\n0:グー\n1:チョキ\n2:パー"
    self.hand

  else
     player_hand
    # コンソールを入力待ち状態にし、プレイヤーがコンソールから打ち込んだ値を出力する処理のメソッドの処理をこの中に作成する
   end
  end
end


class Enemy
  def hand
    enemy_result = [0,1,2]
    enemy_hand = enemy_result.sample
    puts"#{enemy_hand}"
    return enemy_hand
    # グー、チョキ、パーの値をランダムに出力するメソッドの処理をこの中に作成する
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    #byebug
    result = (player_hand.to_i - enemy_hand.to_i + 3) % 3
    #byebug
    #p '---------------'
    #p result

    jankens = ["グー","チョキ","パー"]

    if result == 0
      puts "相手の手は#{jankens[enemy_hand]}です。あいこです。"
      #return true
    elsif   result == 2
          puts "相手の手は#{jankens[enemy_hand]}です。あなたの勝ちです"
          #return false
    else result  == 1
           puts "相手の手は#{jankens[enemy_hand]}です。あなたの負けです。"
          #return false
    end
  end
end


    # プレイヤーが打ち込んだ値と、Enemyがランダムに 出した値でじゃんけんをさせ、その結果をコンソール上に出力するメソッドをこの中に作成する
    # そ の際、あいこもしくはグー、チョキ、パー以外の値入力時には、もう一度ジャンケンをする
    # 相手がグー、チョキ、パーのうち、何を出したのかも表示させる


player = Player.new
enemy = Enemy.new
janken = Janken.new

# 下記の記述で、ジャンケンメソッドが起動される
janken.pon(player.hand, enemy.hand)
