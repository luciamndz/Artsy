puts "Cleaning database!"
User.destroy_all
Painting.destroy_all

puts "Creating users.."

11.times do
  User.create!(
    email: Faker::Internet.email,
    password: "password",
    user_name: Faker::Internet.user_name
  )
end

11.times do
  puts "Creating paintings..."
  Painting.create!(
    title: Faker::Book.title,
    measures: rand(1.0..100.0),
    price: rand(1.0..100.0),
    user: User.all.sample
  )
end
