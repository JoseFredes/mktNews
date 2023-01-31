class Posts < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 }
    validates :body, presence: true
    validates :text, presence: true
    validates :author, presence: true
    validates :image, format: { with: URI.regexp }, if: proc { |post| post.image.present? }
end
