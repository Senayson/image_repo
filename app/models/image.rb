class Image < ApplicationRecord
    validates :title, presence: true
    validates :size, presence: true
    validates :category, presence: true
    validates :url, presence: true
end
