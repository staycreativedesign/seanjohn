class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.string :image
      t.text :desc
      t.string :slug
      t.integer :template, :default => "1"
      t.string :linkname
      t.text :metakeywords
      t.text :metadesc
      t.timestamps
    end
  end
end
