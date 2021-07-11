class Pack < ApplicationRecord
  has_many :user_packs
  has_many :users, through: :user_packs
  has_many :liked_names

end
