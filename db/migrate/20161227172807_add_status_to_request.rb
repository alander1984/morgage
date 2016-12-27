class AddStatusToRequest < ActiveRecord::Migration
	change_table :requests do |t|
  		t.integer :status
  	end	
end
