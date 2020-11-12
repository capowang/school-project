class Article < ApplicationRecord
	validates :title, :subtitle, :content, :photo, :title_cn, :subtitle_cn, :content_cn, presence: true
end
