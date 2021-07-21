require 'rails_helper'

describe LikedName, type: :model do
  describe "relationships" do
    it { should belong_to :pet_name }
    it { should belong_to :user }
  end
end
