class CreateJoinMotionsProjects < ActiveRecord::Migration
  def change
    create_table :motions_projects, id: false do |t|
      t.integer :motion_id
      t.integer :project_id
    end
  end
end
