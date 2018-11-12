class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.boolean :completed

      t.integer :goal_id
      t.integer :calendar_id

      t.timestamps
    end
  end
end
