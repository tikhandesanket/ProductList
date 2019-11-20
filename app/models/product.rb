class Product < ApplicationRecord

	validates :sku_code,uniqueness: true, length: { maximum: 8 }

	has_and_belongs_to_many :warehouse 

end
