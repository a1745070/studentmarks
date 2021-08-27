class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.belongs_to :user
      t.string :role
      t.timestamps
    end
  end
end
