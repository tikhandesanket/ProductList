class CreateJoinTableProductWarehouse < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :warehouses do |t|
        t.index [:product_id, :warehouse_id]
      # t.index [:warehouse_id, :product_id]
    end
  end
end
