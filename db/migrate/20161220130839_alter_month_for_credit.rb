class AlterMonthForCredit < ActiveRecord::Migration
  def change
  	remove_column :products, :months;
  	change_table :products do |t|
      t.string :months;
    end  
  end
end
