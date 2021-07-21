require 'rails_helper'

describe User, type: :model do
  describe "relationships" do
    it { should have_many :liked_names }
    it { should have_many(:pet_names).through(:liked_names) }
  end
end
