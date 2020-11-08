class Teacher < ApplicationRecord
	belongs_to :school
	validates :photo, :name, :description, presence: true
	
end


