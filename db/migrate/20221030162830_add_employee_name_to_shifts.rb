class AddEmployeeNameToShifts < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :employee_name, :string
  end
end
