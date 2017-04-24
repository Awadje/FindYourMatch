class AddMatchAbToDays < ActiveRecord::Migration[5.0]
  def change
    add_column :days, :student_a, :integer
    add_column :days, :student_b, :integer
  end
end
