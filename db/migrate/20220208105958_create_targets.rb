class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.datetime :finish_date
      t.string :status
      t.integer :team_id
      t.timestamps
    end
  end
end
