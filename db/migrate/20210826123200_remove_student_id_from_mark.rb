class RemoveStudentIdFromMark < ActiveRecord::Migration[6.1]
  def change
    remove_column :marks, :student_id, :integer
  end
end
