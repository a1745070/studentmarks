class AddMarkToAssignment < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :mark, :int
  end
end
