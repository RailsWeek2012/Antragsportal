class CreateDecisions < ActiveRecord::Migration
  def change
    create_table :decisions do |t|
      t.integer :vote_id
      t.integer :motion_id
      t.text :text
      t.text :commitee_name
      t.date :commitee_date

      t.timestamps
    end
  end
end
