class Add < ActiveRecord::Migration
  def change
		change_table :people do |t|
  			t.string :homephone
  			t.string :contactphone
  		end	  		
  end
end
