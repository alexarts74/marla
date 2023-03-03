require 'faker'


puts 'seeding data...'
Dog.destroy_all
Human.destroy_all
HumanCategory.destroy_all
Category.destroy_all

sporty = Category.create!(
  name: "sporty"
)
feeds_well = Category.create!(
  name: "feeds well"
)
cuddly = Category.create!(
  name: "cuddly"
)
kind = Category.create!(
  name: "kind"
)
great_frisbee_player = Category.create!(
  name: "great frisbee player"
)
crazy = Category.create!(
  name: "crazy"
)


dog = Dog.new(
    name: "Tristan",
    email: "tristan@gmail.com",
    presentation: "I'm a good dog",
    password: "qwertz"
  )
dog_photo = Cloudinary::Uploader.upload("app/assets/images/rebecca.jpeg")
dog.photo.attach(io: URI.open(dog_photo['url']), filename: "rebecca.jpeg", content_type: "image/jpeg")
dog.save!



aubrey = Human.new(
  name: "Aubrey",
  description: "You could have his heart or you could share it like the last slice",
  price: Faker::Number.between(from: 30, to: 300),
  dog: dog,
)
aubrey.categories = [sporty, feeds_well]

aubrey_photo = Cloudinary::Uploader.upload("app/assets/images/drake.jpeg")
aubrey.photo.attach(io: URI.open(aubrey_photo['url']), filename: "drake.jpeg", content_type: "image/jpeg")

aubrey.save!

christina = Human.new(
  name: "Christina",
  description: "Genie in a bottle",
  price: Faker::Number.between(from: 30, to: 300),
  dog: dog,
)
christina.categories = [cuddly, kind]

christina_photo = Cloudinary::Uploader.upload("app/assets/images/christina.jpeg")
christina.photo.attach(io: URI.open(christina_photo['url']), filename: "christina.jpeg", content_type: "image/jpeg")

christina.save!

bow_wow = Human.new(
  name: "Bow Wow",
  description: "Bow-wow-wow, yippie-yo, yippie-yay
  Where my dogs at? Bark with me now",
  price: Faker::Number.between(from: 30, to: 300),
  dog: dog,
)
bow_wow.categories = [great_frisbee_player]

bow_wow_photo = Cloudinary::Uploader.upload("app/assets/images/lilbowwow.jpeg")
bow_wow.photo.attach(io: URI.open(bow_wow_photo['url']), filename: "lilbowwow.jpeg", content_type: "image/jpeg")

bow_wow.save!

max = Human.new(
  name: "Max",
  description: "a 10-year-old boy who has a wild imagination. He loves pretending to be a dog and can often be found barking and chasing his own tail. He's a loyal companion and will fetch your slippers on command - just don't forget to give him a treat!",
  price: Faker::Number.between(from: 30, to: 300),
  dog: dog,
)
max.categories = [great_frisbee_player]

max_photo = Cloudinary::Uploader.upload("app/assets/images/meathead3.jpg")
max.photo.attach(io: URI.open(max_photo['url']), filename: "meathead3.jpg", content_type: "image/jpg")

max.save!

pitbull = Human.new(
  name: "Pitbull",
  description: "Haha it's Mr. 305 checkin' in for the remix - you know that 75 Street Brazil? Well, this year gon' be called Calle Ocho hahahaha",
  price: Faker::Number.between(from: 30, to: 300),
  dog: dog,
)
pitbull.categories = [crazy]

pitbull_photo = Cloudinary::Uploader.upload("app/assets/images/pitbull.jpeg")
pitbull.photo.attach(io: URI.open(pitbull_photo['url']), filename: "pitbull.jpeg", content_type: "image/jpeg")

pitbull.save!

madeleine = Human.new(
  name: "Madeleine",
  description: "My best friend who loves dogs",
  price: Faker::Number.between(from: 30, to: 300),
  dog: dog,
)
madeleine.categories = [great_frisbee_player]

madeleine_photo = Cloudinary::Uploader.upload("app/assets/images/madeleine.jpeg")
madeleine.photo.attach(io: URI.open(madeleine_photo['url']), filename: "madeleine.jpeg", content_type: "image/jpeg")

madeleine.save!

greta = Human.new(
  name: "Greta",
  description: "Nice girl who cares a lot about the environment",
  price: Faker::Number.between(from: 30, to: 300),
  dog: dog,
)
greta.categories = [cuddly]

greta_photo = Cloudinary::Uploader.upload("app/assets/images/greta.jpeg")
greta.photo.attach(io: URI.open(greta_photo['url']), filename: "greta.jpeg", content_type: "image/jpeg")

greta.save!



# Human.create!()

# Human.create!()

# Human.create!()



puts 'seed ok'
