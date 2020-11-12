class About < ApplicationRecord
	validates :title, :description, :title_cn, :description_cn, presence: true
end
