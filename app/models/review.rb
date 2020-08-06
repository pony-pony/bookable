class Review < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  mount_uploader :image, ImageUploader

  def liked_by(user)
    Like.find_by(user_id: user.id, review_id: id)
  end

  def self.search(search)
    if search
      Review.where('title LIKE(?)', "%#{search}%")
    else
      Review.all
    end
  end
end
