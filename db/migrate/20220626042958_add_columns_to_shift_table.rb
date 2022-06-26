class AddColumnsToShiftTable < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :hours_worked, :float
    add_column :shifts, :shift_cost, :float
  end
end
