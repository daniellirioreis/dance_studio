class Employee < ActiveRecord::Base
	has_enumeration_for :state, with: State
end
