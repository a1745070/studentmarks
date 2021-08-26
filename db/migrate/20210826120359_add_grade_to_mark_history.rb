class AddGradeToMarkHistory < ActiveRecord::Migration[6.1]
  def change
    add_column :mark_histories, :grade, :string
  end
end
