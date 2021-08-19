class AddCommentsToAssignment < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :comments, :string
  end
end
