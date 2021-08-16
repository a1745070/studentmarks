class RemoveStatusFromLogins < ActiveRecord::Migration[6.1]
  def change
    remove_column :logins, :status, :integer
  end
end
