class Teacher < ApplicationRecord
	has_one_attached :photo
	belongs_to :school
	validates :name, :description, :name_cn, :description_cn, presence: true
end

