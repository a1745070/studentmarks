class CreateLogins < ActiveRecord::Migration[6.1]
  def change
    create_table :logins do |t|
      t.string :username
      t.string :studentid
      t.string :password
      t.string :email

      t.timestamps
    end
  end
end
