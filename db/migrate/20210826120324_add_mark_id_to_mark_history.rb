class AddMarkIdToMarkHistory < ActiveRecord::Migration[6.1]
  def change
    add_column :mark_histories, :mark_id, :integer
  end
end
