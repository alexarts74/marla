require 'faker'


puts 'seeding data...'

Dog.destroy_all

dog = Dog.create!(
    name: "Tristan",
    email: "tristan@gmail.com",
    presentation: "I'm a good dog",
    password: "qwertz"
  )

Human.destroy_all

10.times do
  Human.create!(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Number.between(from: 30, to: 300),
    dog: dog
  )
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
