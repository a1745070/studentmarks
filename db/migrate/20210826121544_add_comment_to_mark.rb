class AddCommentToMark < ActiveRecord::Migration[6.1]
  def change
    add_column :marks, :comment, :string
  end
end
