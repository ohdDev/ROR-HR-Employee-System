class AddEmployeeToDivision < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :divisions, :employees
  end
end
