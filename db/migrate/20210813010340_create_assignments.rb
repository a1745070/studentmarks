class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.string :courseid
      t.string :assignmentid
      t.string :assignmentname
      t.text :assignmentdescr

      t.timestamps
    end
  end
end
