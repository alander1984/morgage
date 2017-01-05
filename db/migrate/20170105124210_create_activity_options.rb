class CreateActivityOptions < ActiveRecord::Migration
  def change
    create_table :activity_options do |t|
      t.references :activity, index: true, foreign_key: true
      t.references :option, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
