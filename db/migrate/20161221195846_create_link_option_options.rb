class CreateLinkOptionOptions < ActiveRecord::Migration
  def change
    create_table :link_option_options do |t|
      t.belongs_to :option, index: true
      t.belongs_to :linkedoption, index:true	
      t.timestamps null: false
    end
  end
end
