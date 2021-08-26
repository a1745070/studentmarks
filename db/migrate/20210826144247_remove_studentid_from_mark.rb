class RemoveStudentidFromMark < ActiveRecord::Migration[6.1]
  def change
    remove_column :marks, :studentid, :string
  end
end
