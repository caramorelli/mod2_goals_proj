class AddColToEventToAssocAchievements < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :achievement_id, :integer
  end
end
