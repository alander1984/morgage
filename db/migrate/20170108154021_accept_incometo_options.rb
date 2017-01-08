class AcceptIncometoOptions < ActiveRecord::Migration
  def change
  	change_table :options do |t|
  		t.string :acceptIncome;
  	end	  
  end
end
