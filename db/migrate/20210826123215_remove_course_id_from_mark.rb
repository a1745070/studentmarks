class RemoveCourseIdFromMark < ActiveRecord::Migration[6.1]
  def change
    remove_column :marks, :course_id, :integer
  end
end
