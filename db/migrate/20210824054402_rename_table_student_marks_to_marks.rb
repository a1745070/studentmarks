class RenameTableStudentMarksToMarks < ActiveRecord::Migration[6.1]
  def change
    rename_table :student_marks, :marks
  end
end
