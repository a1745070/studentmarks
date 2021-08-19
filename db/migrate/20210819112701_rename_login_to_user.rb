class RenameLoginToUser < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :logins, :users
  end

  def self.down
    rename_table :users, :logins
  end
end
