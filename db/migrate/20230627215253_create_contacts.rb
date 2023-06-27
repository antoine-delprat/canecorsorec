class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :message
      t.string :category

      t.timestamps
    end
  end
end
