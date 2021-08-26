class AddMarkToMarkHistory < ActiveRecord::Migration[6.1]
  def change
    add_column :mark_histories, :mark, :integer
  end
end
