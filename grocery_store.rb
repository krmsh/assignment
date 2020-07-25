# ①商品を表示する：disp_info(groceries)
# ②商品を選択する：choose_item(groceries)
# ③個数を入力する：decide_howmany_items(chosen_item)
# ④合計金額を計算する：info_total_price(chosen_item, num_of_items)

groceries = [
    { name: "トマト", price: 100},
    { name: "にんじん", price: 200},
    { name: "かぼちゃ", price: 300},
    { name: "スイカ", price: 1000},
  ]


def disp_info(groceries)

  puts "商品を選択してください"
  
  groceries.each.with_index(1) do |grocery, i|
    puts "#{i}.#{grocery[:name]} (¥#{grocery[:price]})"
  end
end

def choose_item(groceries)
  num_lavel = gets.to_i
  chosen_num_lavel = groceries[num_lavel - 1]
end


def decide_howmany_items(chosen_item)
  puts "#{chosen_item[:name]}ですね、いくつ買いますか？"
  num = gets.to_i
end


def info_total_price(chosen_item, num_of_items)
  total_price = chosen_item[:price] * num_of_items
  if num_of_items >= 5
    discount_total_price = total_price * 0.9
    puts "5個以上なので20%割引となります"
    puts "合計料金：¥#{discount_total_price.floor}"
  else
    puts "合計料金：¥#{total_price}"
  end
end


disp_info(groceries)
chosen_item = choose_item(groceries)
num_of_items = decide_howmany_items(chosen_item)
info_total_price(chosen_item, num_of_items)