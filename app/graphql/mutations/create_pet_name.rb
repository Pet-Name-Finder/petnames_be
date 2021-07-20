class Mutations::CreatePetName < Mutations::BaseMutation
  argument :name, String, required: true

  field :pet_name, Types::PetNameType, null: false
  field :errors, [String], null: false

  def resolve(name:)
    pet_name = PetName.new(name: name)

    if pet_name.save
      {
        pet_name: pet_name,
        errors: []
      }
    else
      {
        pet_name: nil,
        errors: pet_name.errors.full_messages
      }
    end

  end
end
