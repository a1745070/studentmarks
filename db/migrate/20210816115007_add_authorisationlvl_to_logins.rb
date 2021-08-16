class AddAuthorisationlvlToLogins < ActiveRecord::Migration[6.1]
  def change
    add_column :logins, :authorisationlvl, :integer
  end
end
