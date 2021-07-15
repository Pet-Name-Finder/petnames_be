module Types
  class QueryType < Types::BaseObject
     # /users
     field :users, [Types::UserType], null: false

    def users
      User.all
    end
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
    
    # /packs
    field :packs, [Types::PackType], null: false
    
    def packs
      Pack.all
    end
    field :pack, Types::PackType, null: false do
      argument :id, ID, required: true
    end
    
    # /liked_names
    field :liked_names, [Types::LikedNameType], null: false
    
    def liked_names
      LikedName.all
    end
    field :liked_name, Types::LikedNameType, null: false do
      argument :id, ID, required: true
    end
    
    # /pet_names
    field :pet_names, [Types::PetNameType], null: false
    
    def pet_names
      PetName.all
    end
    field :pet_name, Types::PetNameType, null: false do
      argument :id, ID, required: true
    end
    
    # /user_packs
    field :user_packs, [Types::UserPackType], null: false
    
    def user_packs
      UserPack.all
    end
    field :user_pack, Types::UserPackType, null: false do
      argument :id, ID, required: true
    end
  end
end
