class Order < ApplicationRecord
  has_many :items, dependent: :destroy
  
  validates :name, presence: { message: 'メッセージ変更テスト'} 
  validates :address, presence: true #format: {}
  validates :email, presence: true
  validates :tel_number, presence: true
  #validates :pay_type, presence: true
    
  
  def add_items(cart)
    cart.items.each do |item|
      item.cart_id = nil #cart_idをnilに設定する処理は、カートを削除する時にline_itemが連動して削除されるのを防ぎます。
      items << item
    end
  end
end
