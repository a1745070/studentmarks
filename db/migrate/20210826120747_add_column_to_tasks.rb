class AddColumnToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :user_id, :integer
    add_column :tasks, :assignment_id, :integer
  end
end
