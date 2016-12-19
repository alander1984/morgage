class AddFieldsToPerson < ActiveRecord::Migration
  def up
  	change_table :people do |t|
      t.string :name
      t.string :sname
      t.string :tname
      t.string :doc_serie
      t.string :doc_number
      t.datetime :birthday
    end
  end
  def down
  	remove_column :people, :name;
  	remove_column :people, :sname;
  	remove_column :people, :tname;
  	remove_column :people, :doc_serie;
  	remove_column :people, :doc_number;
  	remove_column :people, :birthday;
  end	
end
