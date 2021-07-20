# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# LikedName.destroy_all
# User.destroy_all
# PetName.destroy_all


User.create!(email: "boris_walker@parisian.io")
User.create!(email: "georgina@schinner-crooks.biz")
User.create!(email: "ardell.connelly@mosciski-powlowski.io")
User.create!(email: "romeo@gerhold.biz")
User.create!(email: "lean.daniel@reichert.info")

cat_names = JSON.parse(File.read(Rails.root.join('db/cat_names.json')))
female_dog_names = JSON.parse(File.read(Rails.root.join('db/female_dog_names.json')))
male_dog_names = JSON.parse(File.read(Rails.root.join('db/male_dog_names.json')))
pet_names = JSON.parse(File.read(Rails.root.join('db/pet_names.json')))

combined_pet_names = cat_names + female_dog_names + male_dog_names + pet_names
combined_pet_names = combined_pet_names.uniq.shuffle

combined_pet_names.each do |pet_name|
  PetName.create!(name: pet_name)
end

liked_name1 = LikedName.create!(user_id: 1, pet_name_id: 1, liked: true)
liked_name2 = LikedName.create!(user_id: 1, pet_name_id: 2, liked: false)
liked_name3 = LikedName.create!(user_id: 1, pet_name_id: 3, liked: false)
liked_name4 = LikedName.create!(user_id: 1, pet_name_id: 4, liked: false)
liked_name5 = LikedName.create!(user_id: 1, pet_name_id: 5, liked: true)
liked_name6 = LikedName.create!(user_id: 1, pet_name_id: 6, liked: true)
liked_name7 = LikedName.create!(user_id: 1, pet_name_id: 7, liked: false)
liked_name8 = LikedName.create!(user_id: 1, pet_name_id: 8, liked: true)

liked_name9 = LikedName.create!(user_id: 2, pet_name_id: 1, liked: true)
liked_name10 = LikedName.create!(user_id: 2, pet_name_id: 2, liked: false)
liked_name11 = LikedName.create!(user_id: 2, pet_name_id: 3, liked: false)
liked_name12 = LikedName.create!(user_id: 2, pet_name_id: 4, liked: true)
liked_name13 = LikedName.create!(user_id: 2, pet_name_id: 5, liked: true)
liked_name14 = LikedName.create!(user_id: 2, pet_name_id: 6, liked: true)
