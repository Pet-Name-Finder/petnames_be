class LikedName < ApplicationRecord
  belongs_to :user
  belongs_to :pet_name
end

