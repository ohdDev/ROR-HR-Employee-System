class RemoveEmployeeFromTeam < ActiveRecord::Migration[7.0]
  def change
    remove_column :teams, :employee_id
  end
end
