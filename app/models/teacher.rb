class Teacher < ApplicationRecord
	has_one_attached :photo
	# attr_accessor :remove_photo
	# after_save do
 #    	photo.purge if remove_photo == '1'
 #  	end
 #  	rails_admin do
 #    	field :name
 #    	field :description
 #    	field :name_cn
 #    	field :description_cn
 #    	field :photo, :active_storage do 
 #      		delete_method :delete_photo
 #      	end
 #    end


	belongs_to :school
	validates :name, :description, :name_cn, :description_cn, presence: true
end

