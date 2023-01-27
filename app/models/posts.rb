class Posts < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :author, presence: true
    validates :text, presence: true
    validates :image, presence: true
end
