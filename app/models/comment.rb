class Comment < ApplicationRecord
  belongs_to :user, foreign_key: :user
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable
end
