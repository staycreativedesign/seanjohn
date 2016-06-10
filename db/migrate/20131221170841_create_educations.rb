class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :name
      t.text :image
      t.text :desc
      t.string :slug
      t.string :linkname
      t.integer :template, :default => "1"
      t.text :metakeywords
      t.text :metadesc
      t.timestamps
    end
  end
end
