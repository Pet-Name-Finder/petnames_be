# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
LikedName.destroy_all
User.destroy_all
PetName.destroy_all

5.times do
  user = User.create!(email: Faker::Internet.email)
end

10.times do
  pet_name = PetName.create!(name: Faker::Creature::Dog.name)
end

liked_name1 = LikedName.create!(user_id: 1, pet_name_id: 1, liked: true)
liked_name2 = LikedName.create!(user_id: 1, pet_name_id: 2, liked: false)
liked_name3 = LikedName.create!(user_id: 1, pet_name_id: 3, liked: [true, false].sample)
liked_name4 = LikedName.create!(user_id: 1, pet_name_id: 4, liked: [true, false].sample)
liked_name5 = LikedName.create!(user_id: 1, pet_name_id: 5, liked: [true, false].sample)
liked_name6 = LikedName.create!(user_id: 1, pet_name_id: 6, liked: [true, false].sample)
liked_name7 = LikedName.create!(user_id: 1, pet_name_id: 7, liked: [true, false].sample)
liked_name8 = LikedName.create!(user_id: 1, pet_name_id: 8, liked: [true, false].sample)

liked_name9 = LikedName.create!(user_id: 2, pet_name_id: 1, liked: true)
liked_name10 = LikedName.create!(user_id: 2, pet_name_id: 2, liked: false)
liked_name11 = LikedName.create!(user_id: 2, pet_name_id: 3, liked: [true, false].sample)
liked_name12 = LikedName.create!(user_id: 2, pet_name_id: 4, liked: [true, false].sample)
liked_name13 = LikedName.create!(user_id: 2, pet_name_id: 5, liked: [true, false].sample)
liked_name14 = LikedName.create!(user_id: 2, pet_name_id: 6, liked: [true, false].sample)
