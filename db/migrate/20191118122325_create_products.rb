class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|

 			#t.references :warehouse, index: true
			t.string :sku_code
			t.string :name
			t.integer :desciption
			t.datetime :mgf_date
			
      t.timestamps
    end
  end
end
