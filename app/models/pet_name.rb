class PetName < ApplicationRecord
  has_many :liked_names
  has_many :users, through: :liked_names
end
