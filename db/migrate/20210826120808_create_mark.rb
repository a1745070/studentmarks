class CreateMark < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.integer :task_id
      t.string :grade
      t.integer :mark
      t.string :comment

      t.timestamps
    end
  end
end
