User.destroy_all
Flat.destroy_all
Service.destroy_all


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

hotel = Flat.new(user_id: 1, name: "hotel", address: "avenue victor hugo", zip_code: "12000", city: "Rodez", picture: "moulin-rouge.jpg")
hotel.save!

hotel4 = Flat.new(user_id: 1, name: "hotel4", address: "rue de la barrière", zip_code: "12000", city: "Rodez", picture: "moulin-rouge.jpg")
hotel4.save!

puts 'Finished creating services !'

puts 'Creating services...'
wifi = Service.new(name: "wifi", code: "0001", icon: "")
wifi.save!

lv = Service.new(name: "Lave vaisselle", code: "0002", icon: "")
lv.save!

ll = Service.new(name: "Lave linge", code: "0003", icon: "")
ll.save!

puts 'Finished creating Services !'


puts 'Association Services_appart'

a = FlatService.new(service_id: 1, flat_id: 4)
a.save
b = FlatService.new(service_id: 2, flat_id: 4)
b.save
c = FlatService.new(service_id: 3, flat_id: 4)
c.save

puts 'Finished Association Services_appart'
