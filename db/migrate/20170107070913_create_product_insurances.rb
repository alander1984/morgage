class CreateProductInsurances < ActiveRecord::Migration
  def change
    create_table :product_insurances do |t|
      t.references :product, index: true, foreign_key: true
      t.references :insurance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
