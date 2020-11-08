class Article < ApplicationRecord
	validates :title, :subtitle, :content, :photo, presence: true
end
