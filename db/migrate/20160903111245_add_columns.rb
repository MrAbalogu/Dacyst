class AddColumns < ActiveRecord::Migration
  def change
  	add_column :users, :birthday, :date 
  	add_column :users, :country, :string 
  	add_column :users, :state, :string 
  	add_column :users, :school, :string 
  	add_column :users, :gender, :string 
  	add_column :users, :phone_number, :string 
  	add_column :users, :field, :string 
  	add_column :users, :job_role, :string 
  end
end
