class AddGradeToAssignment < ActiveRecord::Migration[6.1]
  def change
    add_column :assignments, :grade, :string
  end
end
