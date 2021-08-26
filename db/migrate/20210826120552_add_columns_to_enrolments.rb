class AddColumnsToEnrolments < ActiveRecord::Migration[6.1]
  def change
    add_column :enrolments, :course_id, :integer
    add_column :enrolments, :user_id, :integer
  end
end
