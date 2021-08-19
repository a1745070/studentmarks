class AddStudentidToAssignments < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :studentid, :string
  end
end
