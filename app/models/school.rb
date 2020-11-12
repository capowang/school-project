class School < ApplicationRecord
	has_many :teachers
	validates :title, :address, :content, :photo, :title_cn, :address_cn, :content_cn, presence: true

end
