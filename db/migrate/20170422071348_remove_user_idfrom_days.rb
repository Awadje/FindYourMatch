class RemoveUserIdfromDays < ActiveRecord::Migration[5.0]
  def self.up
  remove_column :days, :user_id
end
end
