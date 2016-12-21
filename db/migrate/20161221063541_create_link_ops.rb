class CreateLinkOps < ActiveRecord::Migration
  def change
    create_table :link_ops do |t|
      t.belongs_to :product, index: true
      t.belongs_to :option, index:true	
      t.timestamps
    end
  end
end
