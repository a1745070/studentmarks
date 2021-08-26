class CreateAssignment < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.integer :course_id
      t.string :assignmentname
      t.text :assignmentdesc
      t.integer :weight

      t.timestamps
    end
  end
end
