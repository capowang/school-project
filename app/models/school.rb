class School < ApplicationRecord
	has_many :teachers
	validates :title, :subtitle, :content, :photo, presence: true
end
