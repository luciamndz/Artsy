puts "Cleaning database!"
User.destroy_all
Painting.destroy_all
Order.destroy_all

puts "Creating users.."

User.create!(
  email: "leo413@gmail.com",
  password: "123456",
  user_name: "leo_mtzsdr1"
)
User.create!(
  email: "mariana_m211@gmail.com",
  password: "123456",
  user_name: "mar_mariarts"
)
User.create!(
  email: "linda_str1@gmail.com",
  password: "123456",
  user_name: "lindastrd"
)
User.create!(
  email: "tomas_xmen12@gmail.com",
  password: "123456",
  user_name: "arts_toms"
)
User.create!(
  email: "lu_me@gmail.com",
  password: "123456",
  user_name: "lu_mndzs1"
)
User.create!(
  email: "maikmagicm@gmail.com",
  password: "123456",
  user_name: "magicmaiik"
)


puts "Creating paintings..."

require "open-uri"

paintings = [
  {title: "Ocean", width: 50, height: 50, price: 100, user: (User.first), purchased: false, url: "https://www.singulart.com/images/artworks/v2/cropped/5947/main/zoom/859523_4e7229e73f293917114f16e7c12e2723.jpeg"},
  {title: "Untitled", width: 100, height: 50, price: 120, user: (User.third), purchased: false, url: "https://media.timeout.com/images/101616011/750/422/image.jpg"},
  {title: "Sunset", width: 120, height: 50, price: 800, user: (User.second), purchased: false, url: "https://i.etsystatic.com/29043746/r/il/728eb9/3917730990/il_fullxfull.3917730990_tma9.jpg"},
  {title: "Apple", width: 210, height: 110, price: 50, user: (User.last), purchased: false, url: "https://assets.bluethumb.com.au/media/image/thumbnail/5000/415/eyJpZCI6InVwbG9hZHMvbGlzdGluZy8zNDk0MjAvYWxpbmEtem9ya2luYS1ldmUtcy1hcHBsZS1ibHVldGh1bWItMi1mZWI3LmpwZyIsInN0b3JhZ2UiOiJzdG9yZSIsIm1ldGFkYXRhIjp7ImZpbGVuYW1lIjoiYWxpbmEtem9ya2luYS1ldmUtcy1hcHBsZS1ibHVldGh1bWItMi1mZWI3LmpwZyIsIm1pbWVfdHlwZSI6bnVsbH19?signature=34a3ac4e5595d0282ceed6ab82d2d407aea085c3cfbedf9b9c33241be6612818"},
  {title: "Untitled", width: 100, height: 40, price: 220, user: (User.first), purchased: false, url: "https://images.saatchiart.com/saatchi/2071797/art/10578967/9641457-ZPMRIHCT-7.jpg"},
  {title: "Flowers", width: 50, height: 50, price: 99, user: (User.last), purchased: false, url: "https://i0.wp.com/artpeople.net/wp-content/uploads/2016/11/Wendy-Ng-paintings6.jpg?resize=600%2C600&ssl=1"},
  {title: "Garden", width: 150, height: 50, price: 150, user: (User.second), purchased: false, url: "https://i.etsystatic.com/22973207/r/il/6be204/3369751455/il_570xN.3369751455_45tk.jpg"},
  {title: "Velerito", width: 120, height: 50, price: 25, user: (User.first), purchased: false, url: "https://i.pinimg.com/736x/f5/c2/bf/f5c2bfc37b39e559aa5c91e773bc4b9a.jpg"},
  {title: "Untitled", width: 120, height: 60, price: 500, user: (User.first), purchased: false, url: "https://st4.depositphotos.com/3576919/20565/i/450/depositphotos_205653960-stock-illustration-colorful-oil-painting-canvas-texture.jpg"},
  {title: "At the sea", width: 80, height:40, price: 280, user: (User.third), purchased: false, url: "https://artenet.es/media/reviews/photos/thumbnail/300x300s/c2/be/2c/30844-playa-en-la-nostalgia-65-1632395137.jpg"},
  {title: "Amigas", width: 60, height: 40, price: 310, user: (User.last), purchased: false, url: "https://artelista.s3.amazonaws.com/obras/fichas/7/2/0/1874582435929553.jpg"}
]

paintings.each do |pintura|
  painting = Painting.new(title: pintura[:title], width: pintura[:width], height: pintura[:height], price: pintura[:price], user: pintura[:user], purchased: pintura[:purchased])
  file = URI.open(pintura[:url])
  painting.photo.attach(io: file, filename: pintura[:title], content_type: "image/png")
  painting.save
end

puts "Creating orders..."
