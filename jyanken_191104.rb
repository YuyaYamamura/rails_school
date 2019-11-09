puts "これは、じゃんけんゲームです。"
puts "自分手を「グー(1)　チョキ(2)　パー(3)」から選択して下さい。"

mine_hand = gets.chomp!
partner_hand = rand(1..3)

loop{
    if mine_hand == "1"
        puts "あなたが出したのは、グーです。"
    elsif mine_hand == "2"
        puts "あなたが出したのは、チョキです。"
    elsif mine_hand == "3"
        puts "あなたが出したのは、パーです。"
    else
        puts "1～3の番号を選択して下さい。"
    end

    if partner_hand == 1
        puts "相手が出したのは、グーです。"
    elsif partner_hand == 2
        puts "相手が出したのは、チョキです。"
    elsif partner_hand == 3
        puts "相手が出したのは、パーです。"
    end

    #自分が勝ったパターン
    if (mine_hand == "1" && partner_hand == 2) || (mine_hand == "2" && partner_hand == 3) || (mine_hand == "3" && partner_hand == 1)
        puts "あなたが勝ちました。"
        break
    #自分が負けたパターン
    elsif (mine_hand == "1" && partner_hand == 3) || (mine_hand == "2" && partner_hand == 1) || (mine_hand == "3" && partner_hand == 2)
        puts "あなたは負けました。"
        break
    elsif mine_hand == partner_hand
        puts "あいこです。もう一度、手を出してください。"
        puts "自分手を「グー(1)　チョキ(2)　パー(3)」から選択して下さい。"
        mine_hand = gets.chomp!
        partner_hand = rand(1..3)
    end
}