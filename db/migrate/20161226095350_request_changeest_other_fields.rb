class RequestChangeestOtherFields < ActiveRecord::Migration
  def change
  	remove_column :requests, :estOther;
  	remove_column :requests, :estOtherTest;
  	change_table :requests do |t|
      t.boolean :estOther;
      t.string :estOtherText;
    end  
  end
end
