class AddCounterToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :counter, :integer
  end
end
