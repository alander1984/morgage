class RemoveActOptLink < ActiveRecord::Migration
  def change
  	drop_table :activityOptions
  end
end
