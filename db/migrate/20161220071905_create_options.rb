class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :target
      t.string :borrower
      t.string :mortgagor
      t.string :sAmount
      t.string :cpCoeff
      t.string :percent
      t.string :rule

      t.timestamps null: false
    end
  end
end
