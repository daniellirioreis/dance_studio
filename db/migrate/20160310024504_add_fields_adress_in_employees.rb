class AddFieldsAdressInEmployees < ActiveRecord::Migration
  def change
  		add_column :employees, :street,             :string
  		add_column :employees, :number_street,      :string
  		add_column :employees, :neighborhood,       :string
  		add_column :employees, :city,               :string
  		add_column :employees, :state,              :integer
  		add_column :employees, :zip_code,           :string
  end
end
