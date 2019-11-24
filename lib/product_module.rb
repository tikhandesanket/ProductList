module ProductModule

    def get_warehouse_by_name(name)

				Warehouse.find_by(name: name) 

		end
end