class AddNametoProductsAndOptions < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  		t.string :name;
  		t.string :NPA;
  		t.datetime :startdate;
  	end	
  	change_table :options do |t|
  		t.string :name;
  		t.string :NPA;
  		t.datetime :startdate;
  	end	
  end
end
