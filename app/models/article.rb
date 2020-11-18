class Article < ApplicationRecord
has_one_attached :photo1
has_one_attached :photo2
has_one_attached :photo3
has_one_attached :photo4
has_one_attached :photo5
has_one_attached :photo6
has_one_attached :photo7
has_one_attached :photo8

validates :title, :subtitle, :content, :title_cn, :subtitle_cn, :content_cn, presence: true
end

