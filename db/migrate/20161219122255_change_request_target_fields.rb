class ChangeRequestTargetFields < ActiveRecord::Migration
  def change
  	remove_column :requests, :target;
  	change_table :requests do |t|
      t.boolean :targetReadyEstate;
      t.boolean :targetBuildingEstate;
      t.boolean :targetPreviousCredit;
    end  
  end
end
