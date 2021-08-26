class RemoveCourseidFromMark < ActiveRecord::Migration[6.1]
  def change
    remove_column :marks, :courseid, :string
  end
end
