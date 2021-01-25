class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string                   :name
      t.text                     :description
      t.integer                  :price
      t.text                     :image
      t.string                   :url
      t.timestamps
    end
  end
end
