require 'rails_helper'

describe PetName, type: :model do
  describe "relationships" do
    it { should have_many :liked_names }
    it { should have_many(:users).through(:liked_names) }
  end
end
