class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :cdu_party
      t.string :spd_party

      t.timestamps
    end
  end
end
