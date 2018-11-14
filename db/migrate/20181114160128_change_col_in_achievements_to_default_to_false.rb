class ChangeColInAchievementsToDefaultToFalse < ActiveRecord::Migration[5.2]
  def change
    change_column :achievements, :completed, :boolean, default: false
  end
end
