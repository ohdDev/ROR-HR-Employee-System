class AddTeamToTargets < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :targets, :teams
  end
end
