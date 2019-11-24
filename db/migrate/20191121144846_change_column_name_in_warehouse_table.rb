class ChangeColumnNameInWarehouseTable < ActiveRecord::Migration[6.0]
  def change
  	 rename_column :warehouses, :max_capcity, :max_capacity
  	 rename_column :warehouses, :min_capcity, :min_capacity
  end
end
