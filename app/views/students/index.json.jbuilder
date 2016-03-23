json.array!(@students) do |student|
  json.extract! student, :id, :name, :birth_date, :cpf, :gender, :profession, :phone, :cel_phone, :father, :mother, :responsible, :cpf_responsible
  json.url student_url(student, format: :json)
end
