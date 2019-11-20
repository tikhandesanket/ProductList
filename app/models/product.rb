class Product < ApplicationRecord

	validates :sku_code,uniqueness: true, length: { maximum: 8 }

	has_and_belongs_to_many :warehouses, counter_cache: true


	def self.get_warehouse_by_name(name)
  
     Warehouse.find_by_name(name) 

  end


end
