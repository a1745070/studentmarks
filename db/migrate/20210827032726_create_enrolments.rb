class CreateEnrolments < ActiveRecord::Migration[6.1]
  def change
    create_table :enrolments do |t|
      t.belongs_to :user
      t.belongs_to :course
      t.timestamps
    end
  end
end
