class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.date :birth_date
      t.string :cpf
      t.integer :gender
      t.string :profession
      t.string :phone
      t.string :cel_phone
      t.string :father
      t.string :mother
      t.string :responsible
      t.string :cpf_responsible

      t.timestamps null: false
    end
  end
end
