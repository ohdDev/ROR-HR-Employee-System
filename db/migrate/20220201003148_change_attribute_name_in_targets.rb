class ChangeAttributeNameInTargets < ActiveRecord::Migration[7.0]
  def change
    rename_column :targets, :attribute, :t_attribute
  end
end
