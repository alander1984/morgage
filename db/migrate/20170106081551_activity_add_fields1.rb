class ActivityAddFields1 < ActiveRecord::Migration
  def change
  	change_table :activities do |t|
      t.float :percent
      t.references :insurance, index: true, foreign_key: true
    end  
  end
end
