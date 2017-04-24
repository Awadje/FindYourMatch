class RemoveColumnsIdDay < ActiveRecord::Migration[5.0]
  def change
    def self.up
      remove_column :days, :user_id
end
  end
end
