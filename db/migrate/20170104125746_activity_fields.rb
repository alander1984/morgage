class ActivityFields < ActiveRecord::Migration
  def change
  	change_table :activities do |t|
      t.integer :type
      t.belongs_to :request, index: true
      t.belongs_to :product, index: true
    end  

    create_table :activityOptions do |t|
    	t.belongs_to :activity, index: true
    	t.belongs_to :option, index: true	
    end	

    drop_table :processes

  end
end	