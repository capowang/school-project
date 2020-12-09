class About < ApplicationRecord
	has_one_attached :photo1
	has_one_attached :photo2
	has_one_attached :photo3
	has_one_attached :photo4
	validates :title, :description, :title_cn, :description_cn, presence: true
end
