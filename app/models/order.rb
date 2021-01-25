class Order < ApplicationRecord
  has_many :items, dependent: :destroy
  
  def add_items(cart)
    cart.items.each do |item|
      item.cart_id = nil #cart_idをnilに設定する処理は、カートを削除する時にline_itemが連動して削除されるのを防ぎます。
      items << item
    end
  end
end
