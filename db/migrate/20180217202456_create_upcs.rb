class CreateUpcs < ActiveRecord::Migration[5.1]
  def change
    create_table :upcs do |t|
      t.string :product_name
      t.string :upc

      t.timestamps
    end
  end
end
