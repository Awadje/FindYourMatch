class AddDayToAdmin < ActiveRecord::Migration[5.0]
  def change
    add_reference :admins, :days, foreign_key: true
  end
end
