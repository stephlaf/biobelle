puts 'Cleaning db'
Product.destroy_all
puts 'Seeding db'

5.times do |p|
  p = Product.create(name: "Crème",
    description: Faker::Lorem.paragraph, price: 15,
    photo: 'https://picsum.photos/150?random')
end

5.times do |p|
  p = Distributeur.create(name: "Magasin",
    address: "1222 à côté, Montreal",
    website: "prout@pouet.ca",
    product_list: Faker::Lorem.paragraph)
end

User.create!(email: 'annie@biobelle.ca', password: '123456')
