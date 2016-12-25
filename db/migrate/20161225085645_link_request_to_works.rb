class LinkRequestToWorks < ActiveRecord::Migration
  def change
  	change_table :requests do |t|
      t.integer :mainwork_id, :references => "work"
      t.integer :secondwork_id, :references => "work"
    end  
	add_foreign_key :requests, :works, column: :mainwork_id
    add_foreign_key :requests, :works, column: :secondwork_id
  end
end
