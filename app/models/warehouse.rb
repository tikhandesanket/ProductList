class Warehouse < ApplicationRecord

	validates :wh_code ,uniqueness: true , length: {minimum: 4, maximum: 16}

end
