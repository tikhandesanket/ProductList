class CreateWarehouses < ActiveRecord::Migration[6.0]
  def change
    create_table :warehouses do |t|

			t.string :wh_code
			t.string :name
			t.integer :pincode
			t.integer :max_capcity
			t.integer :product_count

      t.timestamps
    end
  end
end
