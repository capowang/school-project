class Teacher < ApplicationRecord
	belongs_to :school
	validates :photo, :name, :description, :photo, :name_cn, :description_cn, presence: true
end

