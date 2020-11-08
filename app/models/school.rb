class School < ApplicationRecord
	has_many :teachers
	validates :title, :address, :content, :photo, presence: true
end
