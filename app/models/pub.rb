class Pub < ApplicationRecord
  has_many_attached :images
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user

  def self.search(keyword)
    where("name LIKE ?", "%#{keyword}%")
  end

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end