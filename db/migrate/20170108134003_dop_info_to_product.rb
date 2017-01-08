class DopInfoToProduct < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  		t.string :dopinfo;
  	end	
  end
end
