class CreateAssignments < ActiveRecord::Migration[6.1]
  def change
    create_table :assignments do |t|
      t.belongs_to :course
      t.string :assignmentname
      t.string :assignmentdesc
      t.integer :weight
      t.timestamps
    end
  end
end
