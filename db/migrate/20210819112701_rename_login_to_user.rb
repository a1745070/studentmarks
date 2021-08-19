class RenameLoginToUser < ActiveRecord::Migration[6.1]
  def self.up
    rename_table :login, :user
  end

  def self.down
    rename_table :user, :login
  end
end
