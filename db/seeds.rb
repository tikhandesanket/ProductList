# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

60.times do

	sku_code = rand(36**8).to_s(36).upcase
	name = ["Nike","Puma","Bata","Addidas","Reebok","Vans Ward"].sample
	desciption = ['product features include 100% pure Himalayan salt,', 'The product benefits include reduced EMF pollution, purified air, and reduced symptoms of allergies, asthma, and headaches', 'The product description includes features, sure, but it goes further into the story of the key feature', 'In the product description for the “Immortality Tea”, we learn about the historical significance of this type of tea as well as its many benefits','Using a consistent tone that matches the brand builds trust with the customers and makes certain e-commerce brands'].sample
	mgf_date = Date.today - rand(1**10).to_i.days

	product = Product.create(sku_code: sku_code, name: name, desciption: desciption, mgf_date: mgf_date)
	p "--------Record : #{product.errors.messages}"
end


3.times do

	wh_code = rand(36**10).to_s(36)
	name = ['Mumbai', 'NewDelhi','Bangalore'].sample
	pincode = rand(15**5)
	product_count = rand(-10)
	max_capacity = rand(10..20)
	min_capacity = rand(2..9)

	warehouse = Warehouse.create(wh_code: wh_code, name: name, pincode: pincode, max_capacity: max_capacity, product_count: product_count, min_capacity: min_capacity)
	p "------Record : #{warehouse.name}"
end

ware_house = Warehouse.find_or_create_by(name: "Mumbai")
all_ware_houses = Warehouse.find_by(:name => "Mumbai")

product = Product.find_or_create_by(:name => "Puma")
all_products = Product.where(:name => "Puma")


product.warehouses << all_ware_houses if product and all_ware_houses
ware_house.products << all_products if ware_house and all_products




 