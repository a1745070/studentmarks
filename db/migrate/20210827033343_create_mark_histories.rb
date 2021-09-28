class CreateMarkHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :mark_histories do |t|
      t.belongs_to :mark
      t.integer :new_mark
      t.text :comment
      t.timestamps
    end
  end
end
