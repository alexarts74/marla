require 'faker'


puts 'seeding data...'

Dog.destroy_all

dog = Dog.create!(
    name: "Tristan",
    email: "tristan@gmail.com",
    presentation: "je suis un très bon chien et j'aime les culs",
    password: "qwertz"
  )

Human.destroy_all

10.times do
  array = ["sportif", "bon nourisseur", "caresseur", "gentil"]
  Human.create!(
    name: Faker::Name.name,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Number.between(from: 30, to: 300),
    category: array.sample,
    dog: dog
  )
end



puts 'seed ok'
