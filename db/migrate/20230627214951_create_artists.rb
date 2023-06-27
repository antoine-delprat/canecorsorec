class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.string :performance
      t.string :city
      t.string :label_list
      t.string :soundcloud_link
      t.string :instagram_link
      t.string :facebook_link
      t.string :youtube_link
      t.string :spotify_link
      t.string :video_link

      t.timestamps
    end
  end
end
