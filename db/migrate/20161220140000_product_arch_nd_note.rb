class ProductArchNdNote < ActiveRecord::Migration
  def change
  	change_table :products do |t|
      t.string :note;
      t.boolean :isArchive;
    end  
  end
end
