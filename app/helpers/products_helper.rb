module ProductsHelper

		def self.get_warehouse_by_name(name)

			Warehouse.find_by_name(name) 

		end
end
