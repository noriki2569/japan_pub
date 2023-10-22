class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :pub

  validates :user_id, uniqueness: {scope: :pub_id}
end
