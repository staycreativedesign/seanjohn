class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :name
      t.string :image
      t.text :desc
      t.string :linkname
      t.string :slug
      t.text :metadesc
      t.string :metakeywords

      t.timestamps
    end
  end
end
