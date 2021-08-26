class AddTaskIdToMark < ActiveRecord::Migration[6.1]
  def change
    add_column :marks, :task_id, :integer
  end
end
