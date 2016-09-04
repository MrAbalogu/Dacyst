class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :my_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
