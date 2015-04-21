class AddSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.belongs_to :user, index: true
      t.string :songtitle, :null => false
      t.string :author, :null => false
      t.string :url
      t.timestamps :null => false
    end
  end
end
