class RenameEmployeeInTeams < ActiveRecord::Migration[7.0]
  def change
    rename_column :teams, :leader_id, :employee_id
  end
end
