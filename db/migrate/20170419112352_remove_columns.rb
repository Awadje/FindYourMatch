class RemoveColumns < ActiveRecord::Migration[5.0]
  def self.up
  remove_column :users, :admin_id
  remove_column :days, :admin_id
  end
end
