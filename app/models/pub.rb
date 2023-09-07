class Pub < ApplicationRecord
  has_many_attached :images
  belongs_to :user

  def self.search(keyword)
    where("name LIKE ?", "%#{keyword}%")
  end
end