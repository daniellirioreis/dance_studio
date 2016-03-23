class AddTeacherToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :teacher, :boolean
  end
end
