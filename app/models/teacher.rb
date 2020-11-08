class Teacher < ApplicationRecord
	belongs_to :school
	vaildates :photo, :name, :description, presence: true
end

