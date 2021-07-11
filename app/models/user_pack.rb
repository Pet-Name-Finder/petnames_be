class UserPack < ApplicationRecord
  belongs_to :pack
  belongs_to :user
end
