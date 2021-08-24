class CreateTable < ActiveRecord::Migration[6.1]
  def change
    create_table :Roles do |t|
      t.string :role
      t.integer :user_id
      t.timestamps
    end
  end
end
