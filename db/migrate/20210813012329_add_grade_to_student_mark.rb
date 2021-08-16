class AddGradeToStudentMark < ActiveRecord::Migration[6.1]
  def change
    add_column :student_marks, :grade, :string
  end
end
