module Types
  class QueryType < Types::BaseObject
     # /users
     field :users, [Types::UserType], null: false, description: 'Returns a list of all users'

    def users
      User.all
    end
    field :user, Types::UserType, null: false, description: 'Returns a single user by id' do
      argument :email, String, required: true
    end

    def user(email:)
      User.where(email: email).first
    end
    
    # /liked_names
    field :liked_names, [Types::LikedNameType], null: false
    
    def liked_names
      LikedName.all
    end
    field :liked_name, Types::LikedNameType, null: false do
      argument :id, ID, required: true
    end
    
    def liked_name(id:)
      LikedName.find(id)
    end
    
    # /pet_names
    field :pet_names, [Types::PetNameType], null: false
    
    def pet_names
      PetName.all
    end
    field :pet_name, Types::PetNameType, null: false do
      argument :id, ID, required: true
    end
    
    def pet_name(id:)
      PetName.find(id)
    end
  end
end
