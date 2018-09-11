puts 'Cleaning db'
Product.destroy_all
puts 'Seeding db'

5.times do |p|
  p = Product.create(name: Faker::LordOfTheRings.character,
    description: Faker::Lorem.paragraph, price: 15,
    photo: 'https://picsum.photos/150?random')
end

User.create!(email: 'annie@biobelle.ca', password: '123456')
