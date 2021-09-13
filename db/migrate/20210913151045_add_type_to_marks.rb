class AddTypeToMarks < ActiveRecord::Migration[6.1]
  def change
    add_column :marks, :asstype, :string
  end
end
