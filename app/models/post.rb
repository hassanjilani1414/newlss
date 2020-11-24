class Post < ApplicationRecord
  validates :title, :content, :status, presence: true
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :likes, dependent: :destroy
  has_many_attached :images
end
