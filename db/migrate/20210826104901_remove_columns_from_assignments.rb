class RemoveColumnsFromAssignments < ActiveRecord::Migration[6.1]
  def change
    remove_column :assignments, :courseid, :string
    remove_column :assignments, :assignmentid, :string
    remove_column :assignments, :grade, :string
    remove_column :assignments, :mark, :integer
    remove_column :assignments, :comments, :string
    remove_column :assignments, :studentid, :string
  end
end
