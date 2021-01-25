class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :quantity, null: false, default: 0
      t.references :product, foreign_key: true
      t.references :cart, foreign_key: true
      t.references :order, foreign_key: true
      t.timestamps
    end
  end
end
