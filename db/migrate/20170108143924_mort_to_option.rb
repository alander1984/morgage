class MortToOption < ActiveRecord::Migration
  def change
  	change_table :options do |t|
  		t.string :mort;
  	end	  
  end
end
