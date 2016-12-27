class AddPersonToRequest < ActiveRecord::Migration
  def change
  	add_reference :requests, :person, foreign_key: true 
  end
end
