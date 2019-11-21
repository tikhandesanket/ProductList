class Product < ApplicationRecord

	validates :sku_code,uniqueness: true, length: { maximum: 8 }

	has_and_belongs_to_many :warehouses, counter_cache: true

  def get_number_of_product_from_ware_house

  		storage_details={}
			all_warehouse = Warehouse.all.collect(&:name)
				all_warehouse.each do |warehouse_name|
				ware_house = Warehouse.find_by(name: warehouse_name) 
				storage_details[warehouse_name.downcase+'max_capacity']= ware_house.max_capacity
				storage_details[warehouse_name.downcase+'min_capacity']= ware_house.min_capacity
				storage_details[warehouse_name.downcase] = ware_house.products.collect(&:name).count(self.name) if ware_house
			end
		#p "-----------------#{storage_details}"
		return storage_details
  end	

end
