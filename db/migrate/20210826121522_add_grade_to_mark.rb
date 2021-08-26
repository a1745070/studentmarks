class AddGradeToMark < ActiveRecord::Migration[6.1]
  def change
    add_column :marks, :grade, :string
  end
end
