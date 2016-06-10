class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.text :desc
      t.string :from
      t.text :apprenticed
      t.text :workedat
      t.text :workedwith
      t.text :specialize
      t.string :slug
      t.integer :template, :default => "1"
      t.string :linkname
      t.text :metakeywords
      t.text :metadesc
      t.timestamps
    end
  end
end
