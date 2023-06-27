class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :category
      t.boolean :availability
      t.string :shop_link

      t.timestamps
    end
  end
end
