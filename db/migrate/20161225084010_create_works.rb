class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :index
      t.string :region
      t.string :area
      t.string :city
      t.string :street
      t.integer :house
      t.string :corp
      t.string :str
      t.string :office
      t.string :phone
      t.string :site
      t.boolean :act1
      t.boolean :act2
      t.boolean :act3
      t.boolean :act4
      t.boolean :act5
      t.boolean :act6
      t.boolean :act7
      t.boolean :act8
      t.boolean :act9
      t.boolean :act10
      t.boolean :act11
      t.boolean :act12
      t.boolean :act13
      t.boolean :act14
      t.boolean :act15
      t.boolean :act16
      t.boolean :act17
      t.boolean :act18
      t.boolean :act19
      t.boolean :act20
      t.string :actOtherText
      t.boolean :cnt1
      t.boolean :cnt2
      t.boolean :cnt3
      t.boolean :cnt4
      t.boolean :cnt5
      t.boolean :cnt6

      t.timestamps null: false
    end
  end
end
