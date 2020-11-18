class School < ApplicationRecord
	has_one_attached :photo1
	has_one_attached :photo2
	has_one_attached :photo3
	has_one_attached :photo4
	has_one_attached :photo5
	has_one_attached :photo6
	has_one_attached :photo7
	has_one_attached :photo8	
	has_many :teachers
	validates :title, :address, :content, :title_cn, :address_cn, :content_cn, presence: true
	geocoded_by :address
  	after_validation :geocode, if: :will_save_change_to_address?
end
