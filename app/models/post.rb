class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :content, length: {maximum: 200}
end
