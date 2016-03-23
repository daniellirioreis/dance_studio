class AddFieldsAddressInStudents < ActiveRecord::Migration
  def change
		add_column :students, :street,             :string
  		add_column :students, :number_street,      :string
  		add_column :students, :neighborhood,       :string
  		add_column :students, :city,               :string
  		add_column :students, :state,              :integer
  		add_column :students, :zip_code,           :string
  end
end
