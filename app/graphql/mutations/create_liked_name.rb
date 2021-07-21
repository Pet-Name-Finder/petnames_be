class Mutations::CreateLikedName < Mutations::BaseMutation
  argument :pet_name_id, ID, required: true
  argument :user_id, ID, required: true
  argument :liked, Boolean, required: true

  field :liked_name, Types::LikedNameType, null: false
  field :errors, [String], null: false

  def resolve(user_id: user_id, pet_name_id: pet_name_id, liked: liked)

    liked_name = LikedName.create(user_id: user_id, pet_name_id: pet_name_id, liked: liked)

    if liked_name.save
      {
        liked_name: liked_name,
        errors: []
      }
    else
      {
        liked_name: nil,
        errors: liked_name.errors.full_messages
      }
    end

  end
end
