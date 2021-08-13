class CreateStudentMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :student_marks do |t|
      t.string :studentid
      t.string :courseid

      t.timestamps
    end
  end
end
