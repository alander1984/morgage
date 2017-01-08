class MonthsToOption < ActiveRecord::Migration
  def change
  	  change_table :options do |t|
  		t.string :months;
  	end	
  end
end
