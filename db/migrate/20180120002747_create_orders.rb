class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.references :agency, foreign_key: true

      t.timestamps
    end
    add_index :orders, :order_number
  end
end
