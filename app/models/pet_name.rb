class PetName < ApplicationRecord
  has_many :liked_names
  has_many :packs, through: :liked_names
end
