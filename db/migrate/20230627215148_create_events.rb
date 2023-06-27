class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :location
      t.string :city
      t.string :ticket_link
      t.string :facebook_event_link

      t.timestamps
    end
  end
end
