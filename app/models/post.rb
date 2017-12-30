class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy

  validates :user, :body, presence: true

  acts_as_commentable
end
