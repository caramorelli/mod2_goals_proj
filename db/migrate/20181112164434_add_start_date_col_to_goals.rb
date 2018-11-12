class AddStartDateColToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :start_date, :datetime
  end
end
