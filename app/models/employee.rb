class Employee < ActiveRecord::Base
	has_enumeration_for :state, with: State

	validates :name, :cpf, :birth_date, :phone,  presence: :true

	def address
		
	end

	def phones
		
	end

	def to_s
		name	
	end
end
