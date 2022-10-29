class ChangeShiftOrgIdtoInt < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :organization_id, :integer
  end
end
