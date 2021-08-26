class RemoveAuthorisationlvlFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :authorisationlvl, :integer
  end
end
