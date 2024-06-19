puts "Cleaning database!"
User.destroy_all
Painting.destroy_all
Order.destroy_all

puts "Creating users.."

User.create!(
  email: "leo43@gmail.com",
  password: "123456",
  user_name: "leo_mtzsdr"
)
User.create!(
  email: "mariana_m21@gmail.com",
  password: "123456",
  user_name: "mar_mariart"
)
User.create!(
  email: "linda_str@gmail.com",
  password: "123456",
  user_name: "lindastr"
)
User.create!(
  email: "tomas_xmen2@gmail.com",
  password: "123456",
  user_name: "arts_tom"
)
User.create!(
  email: "lu_m@gmail.com",
  password: "123456",
  user_name: "lu_mndzs"
)
User.create!(
  email: "maikmagic@gmail.com",
  password: "123456",
  user_name: "magicm"
)


puts "Creating paintings..."

require "open-uri"

paintings = [
  {title: "Ocean", measures: "50 x 50 cm", price: 100, user: (User.first), url: "https://www.singulart.com/images/artworks/v2/cropped/5947/main/zoom/859523_4e7229e73f293917114f16e7c12e2723.jpeg"},
  {title: "Untitled", measures: "100 x 50 cm", price: 120, user: (User.third), url: "https://media.timeout.com/images/101616011/750/422/image.jpg"},
  {title: "Sunset", measures: "120 x 50 cm", price: 800, user: (User.second), url: "https://i.etsystatic.com/29043746/r/il/728eb9/3917730990/il_fullxfull.3917730990_tma9.jpg"},
  {title: "Apple", measures: "210 x 110 cm", price: 50, user: (User.last), url: "https://assets.bluethumb.com.au/media/image/thumbnail/5000/415/eyJpZCI6InVwbG9hZHMvbGlzdGluZy8zNDk0MjAvYWxpbmEtem9ya2luYS1ldmUtcy1hcHBsZS1ibHVldGh1bWItMi1mZWI3LmpwZyIsInN0b3JhZ2UiOiJzdG9yZSIsIm1ldGFkYXRhIjp7ImZpbGVuYW1lIjoiYWxpbmEtem9ya2luYS1ldmUtcy1hcHBsZS1ibHVldGh1bWItMi1mZWI3LmpwZyIsIm1pbWVfdHlwZSI6bnVsbH19?signature=34a3ac4e5595d0282ceed6ab82d2d407aea085c3cfbedf9b9c33241be6612818"},
  {title: "Untitled", measures: "100 x 40 cm", price: 220, user: (User.first), url: "https://images.saatchiart.com/saatchi/2071797/art/10578967/9641457-ZPMRIHCT-7.jpg"},
  {title: "Flowers", measures: "50 x 50 cm", price: 99, user: (User.last), url: "https://i0.wp.com/artpeople.net/wp-content/uploads/2016/11/Wendy-Ng-paintings6.jpg?resize=600%2C600&ssl=1"},
  {title: "Garden", measures: "150 x 50 cm", price: 150, user: (User.second), url: "https://i.etsystatic.com/22973207/r/il/6be204/3369751455/il_570xN.3369751455_45tk.jpg"},
  {title: "Velerito", measures: "120 x 50 cm", price: 25, user: (User.first), url: "https://i.pinimg.com/736x/f5/c2/bf/f5c2bfc37b39e559aa5c91e773bc4b9a.jpg"},
  {title: "Untitled", measures: "120 x 60 cm", price: 500, user: (User.first), url: "https://st4.depositphotos.com/3576919/20565/i/450/depositphotos_205653960-stock-illustration-colorful-oil-painting-canvas-texture.jpg"},
  {title: "At the sea", measures: "80 x 40 cm", price: 280, user: (User.third), url: "https://artenet.es/media/reviews/photos/thumbnail/300x300s/c2/be/2c/30844-playa-en-la-nostalgia-65-1632395137.jpg"},
  {title: "Amigas", measures: "60 x 40 cm", price: 310, user: (User.last), url: "https://artelista.s3.amazonaws.com/obras/fichas/7/2/0/1874582435929553.jpg"}
]

paintings.each do |pintura|
  painting = Painting.new(title: pintura[:title], measures: pintura[:measures], price: pintura[:price], user: pintura[:user])
  file = URI.open(pintura[:url])
  painting.photo.attach(io: file, filename: pintura[:title], content_type: "image/png")
  painting.save
end

puts "Creating orders..."

Order.create!(
  user_id: 1,
  painting_id: 1,
  price: 
)
