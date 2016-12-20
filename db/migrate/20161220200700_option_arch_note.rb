class OptionArchNote < ActiveRecord::Migration
  def change
  	change_table :options do |t|
      t.string :note;
      t.boolean :isArchive;
      t.datetime :enddate;
    end  
  end
end
