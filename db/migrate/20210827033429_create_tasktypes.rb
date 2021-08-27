class CreateTasktypes < ActiveRecord::Migration[6.1]
  def change
    create_table :tasktypes do |t|
      t.belongs_to :task
      t.string :typename
      t.timestamps
    end
  end
end
