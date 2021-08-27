class CreateMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.belongs_to :task
      t.string :grade
      t.integer :mark
      t.text :comment
      t.timestamps
    end
  end
end
