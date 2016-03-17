Prestataire.create!(name: 'Garage Vroom', address: '13 rue de la Gaité 59100 Roubaix')
Prestataire.create!(name: 'Garage de la Rivière', address: '31 rue de la Fonderie 59200 Tourcoing')
Prestataire.create!(name: 'Speedy up', address: '43 rue de la Blanche Porte 59200 Tourcoing')
Prestataire.create!(name: 'Jacky Mécano', address: '3 rue des Champs 59223 Roncq')
Prestataire.create!(name: 'Ma Belle Auto', address: '143 avenue de la Liberté 59000 Lille')

Groom.create!(name: 'Tim', mail:'groom1@tata.com', rib:'123', driving_licence:'driving1', phone_number:'0603453401', picture:' ')
Groom.create!(name: 'Samy', mail:'groom2@tata.com', rib:'456', driving_licence:'driving2', phone_number:'0603453402', picture:' ')
Groom.create!(name: 'Louise', mail:'groom3@tata.com', rib:'234', driving_licence:'driving3', phone_number:'0603453403', picture:' ')
Groom.create!(name: 'Elliot', mail:'groom4@tata.com', rib:'567', driving_licence:'driving4', phone_number:'0603453404', picture:' ')
Groom.create!(name: 'Ector', mail:'groom5@tata.com', rib:'876', driving_licence:'driving5', phone_number:'0603453405', picture:' ')

Car.create!(registration_plate: '123 AB 123', car_maker: 'audi', color: 'noire', mileage: '10000')
Car.create!(registration_plate: '124 AB 123', car_maker: 'renault', color: 'bleu', mileage: '12000')
Car.create!(registration_plate: '125 AB 123', car_maker: 'peugeot', color: 'rouge', mileage: '50000')
Car.create!(registration_plate: '126 AB 123', car_maker: 'audi', color: 'noire', mileage: '70000')
Car.create!(registration_plate: '127 AB 123', car_maker: 'BMW', color: 'gris', mileage: '60000')

Service.create!(title: 'Vidange', price: 100, content: 'CCCCCCCCCCCCC')
Service.create!(title: 'Révision', price: 120, content: 'Rrrrrrrrrrr')
Service.create!(title: 'Clé', price: 134, content: 'remise de clé')

OrderStatus.create!(name: "In Progress")
OrderStatus.create!(name: "Placed")
OrderStatus.create!(name: "Shipped")
OrderStatus.create!(name: "Cancelled")

Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'pneumatiques', price: '80', pick_up_place: 'place du marché', return_place: 'place du marché', service_address: 'rue du garagiste', comment: ' ')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'clés', price: '15', pick_up_place: 'place 1', return_place: 'place du marché', service_address: 'rue des clés', comment: ' ')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'pneumatiques', price: '80', pick_up_place: 'place 2', return_place: 'place 2', service_address: 'rue 6', comment: ' ')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'vidange', price: '30', pick_up_place: 'place 3', return_place: 'place 3', service_address: 'place de la victoire', comment: ' ')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'revision', price: '120', pick_up_place: 'place 4', return_place: 'place 4', service_address: 'place du marché', comment: ' ')


flo = User.create!(email: 'flo@flo.flo', password: 'flofloflo1')
sam = User.create!(email: 'sam@flo.flo', password: 'flofloflo2')
tim = User.create!(email: 'tim@flo.flo', password: 'flofloflo3')
ben = User.create!(email: 'ben@flo.flo', password: 'flofloflo4')
nico = User.create!(email: 'nico@flo.flo', password: 'flofloflo5')

p1 = flo.profils.build(first_name: 'name1', last_name: 'name11',address: '13 rue de la Gaité 59100 Roubaix', picture: ' ', phone_number: '03 20 12 45 45')
p2 = sam.profils.build(first_name: 'name2', last_name: 'name13',address: '13 rue de la Gaité 59100 Roubaix', picture: ' ', phone_number: '03 20 12 45 45')
p3 = tim.profils.build(first_name: 'name3', last_name: 'name15',address: '13 rue de la Gaité 59100 Roubaix', picture: ' ', phone_number: '03 20 12 45 45')
p4 = ben.profils.build(first_name: 'name4', last_name: 'name19',address: '13 rue de la Gaité 59100 Roubaix', picture: ' ', phone_number: '03 20 12 45 45')
p5 = nico.profils.build(first_name: 'name5', last_name: 'name30',address: '13 rue de la Gaité 59100 Roubaix', picture: ' ', phone_number: '03 20 12 45 45')

p1.save
p2.save
p3.save
p4.save
p5.save





