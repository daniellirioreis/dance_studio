json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :cpf, :phone, :email, :birth_date
  json.url employee_url(employee, format: :json)
end
