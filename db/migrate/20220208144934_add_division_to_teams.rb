class AddDivisionToTeams < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :teams, :divisions
  end
end
