class CreateMotions < ActiveRecord::Migration
  def change
    create_table :motions do |t|
      t.string :title
      t.text :text
      t.date :date
      t.string :register
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
