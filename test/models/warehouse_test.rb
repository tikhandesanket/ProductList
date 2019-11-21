require 'test_helper'

class WarehouseTest < ActiveSupport::TestCase
  test "should not save warehouse if the length of wh_code is three" do
		warehouse = Warehouse.new(name: 'Mumabi Warehouse', wh_code: 'ERY')
    assert warehouse.valid?
	end

	test 'valid warehouse' do
    warehouse = Warehouse.new(name: 'Hyderabad Warehouse', wh_code: 'ERHYDY')
    assert warehouse.valid?
  end

end
