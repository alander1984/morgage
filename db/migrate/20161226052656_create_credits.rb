class CreateCredits < ActiveRecord::Migration
  def change
    create_table :credits do |t|
      t.integer :type
      t.string :otherText
      t.string :creditorName
      t.datetime :sdate
      t.datetime :edate
      t.string :currency
      t.integer :totalAmount
      t.integer :monthAmount
      t.integer :restAmount

      t.timestamps null: false
    end
  end
end
