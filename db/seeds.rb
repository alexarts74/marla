require 'faker'


puts 'seeding data...'

Dog.destroy_all

dog = Dog.new(
    name: "Tristan",
    email: "tristan@gmail.com",
    presentation: "I'm a good dog",
    password: "qwertz"
  )
dog_photo = Cloudinary::Uploader.upload("app/assets/images/rebecca.jpeg")
dog.photo.attach(io: URI.open(dog_photo['url']), filename: "rebecca.jpeg", content_type: "image/jpeg")
dog.save!

Human.destroy_all

10.times do
  human = Human.new(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Number.between(from: 30, to: 300),
    dog: dog
  )
  human_photo = Cloudinary::Uploader.upload("app/assets/images/ryan2.jpeg")
  human.photo.attach(io: URI.open(human_photo['url']), filename: "ryan2.jpeg", content_type: "image/jpeg")
  human.save!
end

Category.destroy_all

Category.create!(
  name: "sporty"
)
Category.create!(
  name: "feeds well"
)
Category.create!(
  name: "cuddly"
)
Category.create!(
  name: "kind"
)
Category.create!(
  name: "great frisbee player"
)
Category.create!(
  name: "crazy"
)

puts 'seed ok'
