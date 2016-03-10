class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :cpf
      t.string :phone
      t.string :email
      t.date :birth_date

      t.timestamps null: false
    end
  end
end
