class AddColumnToAssignments < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :weight, :integer
  end
end
