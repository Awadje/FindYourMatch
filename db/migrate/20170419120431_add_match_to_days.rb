class AddMatchToDays < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :match, :string
  end
end
