class CreateActivityInsurances < ActiveRecord::Migration
  def change
    create_table :activity_insurances do |t|
      t.references :activity, index: true, foreign_key: true
      t.references :insurance, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
