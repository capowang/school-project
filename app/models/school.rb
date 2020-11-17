class School < ApplicationRecord
	has_many_attached :photos
	has_many :teachers
	validates :title, :address, :content, :title_cn, :address_cn, :content_cn, presence: true
	geocoded_by :address
  	after_validation :geocode, if: :will_save_change_to_address?
end
