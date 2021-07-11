class User < ApplicationRecord
  has_many :user_packs
  has_many :packs, through: :user_packs
  has_many :liked_names, through: :packs
end
