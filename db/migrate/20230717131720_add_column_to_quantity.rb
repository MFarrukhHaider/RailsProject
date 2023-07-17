class AddColumnToQuantity < ActiveRecord::Migration[7.0]
  def change
    add_column :quantities, :amount, :integer
  end
end
