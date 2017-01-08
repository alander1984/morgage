class AddNoteToProcess < ActiveRecord::Migration
  def change
  	change_table :activities do |t|
  		t.string :note;
  	end	 
  end
end
