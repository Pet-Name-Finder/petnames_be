module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :user_packs, [Types::UserPackType], null: true
    field :packs, [Types::PackType], null: true
    field :liked_names, [Types::LikedNameType], null: true
    field :user_packs_count, Integer, null: true
    field :show_all_packs, String, null: true


    def user_packs_count
      object.user_packs.count
    end
    
    def show_all_packs
      require "pry";binding.pry   
      object.user_pack.pack.name  ##Need to show list of all packs
    end
  end
end



