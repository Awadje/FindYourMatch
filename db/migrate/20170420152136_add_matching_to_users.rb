class AddMatchingToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :matching, :string, array: true, default: []
  end
end
