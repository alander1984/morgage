class AlterPerson < ActiveRecord::Migration
  def change

  	remove_column :people, :name;
  	remove_column :people, :sname;
  	remove_column :people, :tname;
  	remove_column :people, :doc_serie;
  	remove_column :people, :doc_number;
  	remove_column :people, :birthday;

  	change_table :people do |t|
  		t.string :fname
 		t.string :sname
 		t.string :tname
 		t.datetime :birthday
 		t.boolean :sex
 		t.string :fprevname
 		t.string :sprevname
 		t.string :tprevname
 		t.string :passserie
 		t.string :passnumber
 		t.string :passsource
 		t.string :passdivision
 		t.string :snils
 		t.boolean :extpassexists
 		t.string :regaddrindex
 		t.string :regaddrregion
 		t.string :regaddrarea
 		t.string :regaddrcity
 		t.string :regaddrstreet
 		t.integer :regaddrhouse
 		t.string :regaddrhousekorp
 		t.string :regaddrhousestr
 		t.integer :regaddrhouseflat
 		t.boolean :registration_type
 		t.datetime :addrtempregdate
 		t.boolean :sameliveaddress
 		t.string :liveaddrindex
 		t.string :liveaddrregion
 		t.string :liveaddrarea
 		t.string :liveaddrcity
 		t.string :liveaddrstreet
 		t.integer :liveaddrhouse
 		t.string :liveaddrhousekorp
 		t.string :liveaddrhousestr
 		t.integer :liveaddrhouseflat
 		t.boolean :livebaseowner
 		t.boolean :livebaserelative
 		t.boolean :livebasesocial
 		t.boolean :livebaserent
 		t.string :livebaseother
 		t.string :phonemobile
 		t.string :email
 		t.boolean :married
 		t.boolean :simplemarried
 		t.boolean :single
 		t.boolean :divorced
 		t.boolean :widower
 		t.boolean :marriagecontract
 		t.integer :childcount
 		t.boolean :ed1
 		t.boolean :ed2
 		t.boolean :ed3
 		t.boolean :ed4
 		t.boolean :ed5
 		t.boolean :ed6
 		t.integer :childyear1
 		t.integer :childyear2
 		t.integer :childyear3
  	end	
  end
end
