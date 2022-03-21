class AddTeamToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :employees, :teams
  end
end
