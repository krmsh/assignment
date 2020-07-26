require "./grocery_methods"

groceries = [
    { name: "トマト", price: 100},
    { name: "にんじん", price: 200},
    { name: "かぼちゃ", price: 300},
    { name: "スイカ", price: 1000},
  ]

disp_info(groceries)
chosen_item = choose_item(groceries)
num_of_items = decide_howmany_items(chosen_item)
info_total_price(chosen_item, num_of_items)