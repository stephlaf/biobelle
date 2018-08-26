puts 'Cleaning db'
Product.destroy_all
puts 'Seeding db'

# Product.create(name:'test')

5.times do |p|
  p = Product.create(name: Faker::LordOfTheRings.character, description: Faker::Lorem.paragraph, price: 15)

end
