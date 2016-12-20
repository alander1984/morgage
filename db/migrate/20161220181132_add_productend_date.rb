class AddProductendDate < ActiveRecord::Migration
  def change
  	change_table :products do |t|
      t.datetime :enddate;
    end 
  end
end
