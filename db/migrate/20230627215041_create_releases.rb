class CreateReleases < ActiveRecord::Migration[7.0]
  def change
    create_table :releases do |t|
      t.references :artist, null: false, foreign_key: true
      t.string :name
      t.date :release_date
      t.string :type
      t.string :style
      t.string :bandcamp_link
      t.string :spotify_link
      t.string :soundcloud_link
      t.string :youtube_link

      t.timestamps
    end
  end
end
