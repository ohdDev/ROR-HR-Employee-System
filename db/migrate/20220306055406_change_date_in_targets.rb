class ChangeDateInTargets < ActiveRecord::Migration[7.0]
  def change
    change_column :targets, :start_date, :date
    change_column :targets, :finish_date, :date
  end
end
