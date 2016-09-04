class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :body
      t.integer :prize 
      t.string :company

      t.timestamps null: false
    end
  end
end
