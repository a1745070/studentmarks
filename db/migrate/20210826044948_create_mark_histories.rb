class CreateMarkHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :mark_histories do |t|

      t.timestamps
    end
  end
end
