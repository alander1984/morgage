class CreateProcess < ActiveRecord::Migration
  def change
  	remove_column :requests, :status
  	create_table :processes do |t|
      t.integer :type
      t.belongs_to :request, index: true
      t.belongs_to :product, index: true
      t.timestamps
    end  

    create_table :processOptions do |t|
    	t.belongs_to :process, index: true
    	t.belongs_to :option, index: true	
    end	
  end
end
