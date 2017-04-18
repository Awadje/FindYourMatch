class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.date :day
      t.references :user, foreign_key: true
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
