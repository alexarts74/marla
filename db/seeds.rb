require 'faker'

puts 'seeding data'

Human.destroy_all

10.times do
Human.create(
  Faker::Name.name
  Faker.commerce.price(min: number = 1, max: number = 1000
)
end
