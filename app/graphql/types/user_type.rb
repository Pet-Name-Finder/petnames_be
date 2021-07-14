module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :user_packs, [Types::UserPackType], null: true
    field :user_packs_count, Integer, null: true

    def user_packs_count
      object.user_packs.count
    end

  end
end
