class CreateQuantities < ActiveRecord::Migration[7.0]
  def change
    create_table :quantities do |t|
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
