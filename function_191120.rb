require "./plus_num"

puts '1つ目の数字を入力して下さい。'
input_a = gets.to_i

puts '2つ目の数字を入力して下さい。'
input_b = gets.to_i

puts '合計は、'
puts plus_num(input_a,input_b)
puts '、です。'