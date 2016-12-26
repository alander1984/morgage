class LinkRequestCredit < ActiveRecord::Migration
  def change
  	change_table :requests do |t|
      t.integer :credit1_id, :references => "credit"
      t.integer :credit2_id, :references => "credit"
    end  
	add_foreign_key :requests, :credits, column: :credit1_id
    add_foreign_key :requests, :credits, column: :credit2_id
  end
end
