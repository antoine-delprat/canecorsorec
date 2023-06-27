class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :artist, null: false, foreign_key: true
      t.date :booking_date
      t.string :city
      t.string :promoter_name
      t.string :event_name
      t.text :line_up
      t.string :email
      t.text :message
      t.integer :amount_offered

      t.timestamps
    end
  end
end
