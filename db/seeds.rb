User.destroy_all
Flat.destroy_all


# db/seeds.rb
puts 'Creating users...'
ben = User.new(email: "ben@yopmail.com", password: "123456")
ben.save!


puts 'Finished creating users !'

puts 'Creating flats...'
senos = Flat.new(user_id: 1, name: "Domaine de Sénos", address: "Le bourg", zip_code: "12320", city: "Sénergues", picture: "moulin-rouge.jpg")
senos.save!

grange = Flat.new(user_id: 1, name: "Les grangettes", address: "Le bourg", zip_code: "12320", city: "Conques", picture: "moulin-rouge.jpg")
grange.save!

hotel = Flat.new(user_id: 1, name: "hotel", address: "Le bourg", zip_code: "12000", city: "Rodez", picture: "moulin-rouge.jpg")
hotel.save!

puts 'Finished creating flats !'


