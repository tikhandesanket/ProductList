require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	 test 'valid product' do
    product = Product.new(sku_code: 'ERTU67ERTYKI')
    assert product.valid?
  end

	test "should not save product if sku_code maximum eight" do
		product = Product.new(sku_code: 'ERTU67')
    assert product.valid?
	end

end
