class CredittargedToOption < ActiveRecord::Migration
  def change
  	change_table :options do |t|
  		t.string :credittarget;
  	end	  
  end
end
