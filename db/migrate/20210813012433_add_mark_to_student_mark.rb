class AddMarkToStudentMark < ActiveRecord::Migration[6.1]
  def change
    add_column :student_marks, :mark, :int
  end
end
