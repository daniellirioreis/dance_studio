class Student < ActiveRecord::Base
validates :name, :birth_date, :gender, presence: :true

	def to_s
		name
	end
end
