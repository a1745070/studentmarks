class AddTypeToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :asstype, :string
  end
end
