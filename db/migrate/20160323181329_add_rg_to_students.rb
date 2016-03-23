class AddRgToStudents < ActiveRecord::Migration
  def change
    add_column :students, :rg, :string
  end
end
