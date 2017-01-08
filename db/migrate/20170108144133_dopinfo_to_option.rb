class DopinfoToOption < ActiveRecord::Migration
  def change
  	change_table :options do |t|
  		t.string :dopinfo;
  	end	  
  end
end
