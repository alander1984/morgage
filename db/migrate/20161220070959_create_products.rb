class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :audience
      t.string :target
      t.integer :months
      t.string :sAmount
      t.string :pledge
      t.string :insurance
      t.string :cpCoeff
      t.string :rule
      t.string :percent

      t.timestamps null: false
    end
  end
end
