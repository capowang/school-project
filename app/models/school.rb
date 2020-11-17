class School < ApplicationRecord
	has_many :teachers
	validates :title, :address, :content, :photo, :title_cn, :address_cn, :content_cn, presence: true
	geocoded_by :address
  	after_validation :geocode, if: :will_save_change_to_address?
end
