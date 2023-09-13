class Pub < ApplicationRecord
  has_many_attached :images
  has_many :favorites, dependent: :destroy
  belongs_to :user

  def self.search(keyword)
    where("name LIKE ?", "%#{keyword}%")
  end

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end