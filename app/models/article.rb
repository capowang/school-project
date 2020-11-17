class Article < ApplicationRecord
has_many_attached :photos
validates :title, :subtitle, :content, :photo, :title_cn, :subtitle_cn, :content_cn, presence: true
end
