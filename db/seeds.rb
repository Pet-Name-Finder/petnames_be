# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Pack.destroy_all

5.times do
  user = User.create(email: Faker::TvShows::Friends.character)
end

5.times do
  pack = Pack.create(animal_gender: ["male", "female", "irrelevant"].sample, animal_type: ["cat", "dog", "other"].sample, owner_id: [1..3].sample)
end

user_pack1 = UserPack.create(pack_id: 1, user_id: 1)
user_pack2 = UserPack.create(pack_id: 1, user_id: 2)
user_pack3 = UserPack.create(pack_id: 2, user_id: 3)

10.times do
  pet_name = PetName.create(name: Faker::TvShows::Friends.character, viewed: [true, false].sample)
end

liked_name1 = LikedName.create(pack_id: 1, pet_name_id: 2, liked: true)
liked_name2 = LikedName.create(pack_id: 1, pet_name_id: 3, liked: true)
liked_name3 = LikedName.create(pack_id: 1, pet_name_id: 4, liked: [true, false].sample)
liked_name4 = LikedName.create(pack_id: 1, pet_name_id: 5, liked: [true, false].sample)
liked_name5 = LikedName.create(pack_id: 2, pet_name_id: 7, liked: true)
liked_name6 = LikedName.create(pack_id: 2, pet_name_id: 8, liked: [true, false].sample)
liked_name7 = LikedName.create(pack_id: 2, pet_name_id: 1, liked: [true, false].sample)
liked_name8 = LikedName.create(pack_id: 2, pet_name_id: 6, liked: [true, false].sample)
