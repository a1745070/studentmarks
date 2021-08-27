class CreateMarkHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :mark_histories do |t|
      t.belongs_to :mark
      t.string :grade
      t.integer :mark
      t.text :comment
      t.timestamps
    end
  end
end
