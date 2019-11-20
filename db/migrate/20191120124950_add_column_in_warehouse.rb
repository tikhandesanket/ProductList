class AddColumnInWarehouse < ActiveRecord::Migration[6.0]
  def change
  	add_column :warehouses, :min_capcity, :integer
  end
end
