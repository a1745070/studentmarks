class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :courseid
      t.string :coursename
      t.text :coursedescr

      t.timestamps
    end
  end
end
