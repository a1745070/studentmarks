class AddCommentToMarkHistory < ActiveRecord::Migration[6.1]
  def change
    add_column :mark_histories, :comment, :string
  end
end
