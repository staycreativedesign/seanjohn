class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.string :image
      t.string :desc
      t.string :link

      t.timestamps
    end
  end
end
