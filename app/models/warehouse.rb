class Warehouse < ApplicationRecord
	has_and_belongs_to_many :products,counter_cache: true 
	validates :wh_code ,uniqueness: true , length: {minimum: 4, maximum: 16}
  after_create :increment_product_counter
  after_destroy :decrement_product_counter

end


 