class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :phone
      t.text :address
      t.date :delivery_date
      t.text :product_id
      t.string :payment_option
      t.integer :amount
      t.string :order_status

      t.timestamps
    end
  end
end
