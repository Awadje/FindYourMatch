class AddMatchingToDays < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :matching, :string, array: true, default: []
  end
end
