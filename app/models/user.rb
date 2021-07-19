class User < ApplicationRecord
  has_many :liked_names
  has_many :pet_names, through: :liked_names
end
