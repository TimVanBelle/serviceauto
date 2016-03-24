
Prestataire.create!(name: 'Garage Vroom', address: '13 rue de la Gaité 59100 Roubaix')
Prestataire.create!(name: 'Garage de la Rivière', address: '31 rue de la Fonderie 59200 Tourcoing')
Prestataire.create!(name: 'Speedy up', address: '43 rue de la Blanche Porte 59200 Tourcoing')
Prestataire.create!(name: 'Jacky Mécano', address: '3 rue des Champs 59223 Roncq')
Prestataire.create!(name: 'Ma Belle Auto', address: '143 avenue de la Liberté 59000 Lille')

Groom.create!(name: 'Tim', mail:'groom1@tata.com', rib:'123', driving_licence:'driving1', phone_number:'0603453401', picture:'', address: '13 rue de la Gaité 59100 Roubaix')
Groom.create!(name: 'Samy', mail:'groom2@tata.com', rib:'456', driving_licence:'driving2', phone_number:'0603453402', picture:'', address: '31 rue de la Fonderie 59200 Tourcoing')
Groom.create!(name: 'Louise', mail:'groom3@tata.com', rib:'234', driving_licence:'driving3', phone_number:'0603453403', picture:'', address: '43 rue de la Blanche Porte 59200 Tourcoing')
Groom.create!(name: 'Elliot', mail:'groom4@tata.com', rib:'567', driving_licence:'driving4', phone_number:'0603453404', picture:'', address: '3 rue des Champs 59223 Roncq')
Groom.create!(name: 'Ector', mail:'groom5@tata.com', rib:'876', driving_licence:'driving5', phone_number:'0603453405', picture:'', address: '143 avenue de la Liberté 59000 Lille')

Service.create!(title: 'Vidange', price: 39, content: "Vidange simple avec huie de marque", category: 'entretien')
Service.create!(title: 'Entretien intermediaire', price: 99, content: "Entretien avec huile de marque (filtre à huile et remplacement
du filtre à huile inclus) + 33 points de contrôles inclus", category: 'entretien')
Service.create!(title: 'Révision', price: 149, content: "La Révision est un entretien sur mesure réalisé à partir des données techniques de votre véhicule, de son kilométrage et de votre type d'utilisation. Nous intervenons en respectent scrupuleusement les préconisations du carnet d'entretien du constructeur", category: 'entretien')
Service.create!(title: 'Lavage tunnel', price: 9, content: "Lavage impeccable qui préserve la carosserie et la peinture de votre véhicule", category: 'lavage')
Service.create!(title: 'Lavage à la main', price: 49, content: "Nettoyage à la main à l'intérieur et à l'extérieur du véhicule", category: 'lavage')
Service.create!(title: 'Carte grise en prefecture', price: 32, content: "Formalité administrative et remise du certificat d'imatriculation", category: 'carte grise')

OrderStatus.create!(name: "In Progress")
OrderStatus.create!(name: "Placed")
OrderStatus.create!(name: "Shipped")
OrderStatus.create!(name: "Cancelled")

Car.create!(registration_plate: '123 AB 123', car_maker: 'audi', model: 'tt', color: 'noire', mileage: '10000')
Car.create!(registration_plate: '124 AB 123', car_maker: 'renault', model: 'tt', color: 'bleu', mileage: '12000')
Car.create!(registration_plate: '125 AB 123', car_maker: 'peugeot', model: 'tt', color: 'rouge', mileage: '50000')
Car.create!(registration_plate: '126 AB 123', car_maker: 'audi', model: 'tt', color: 'noire', mileage: '70000')
Car.create!(registration_plate: '127 AB 123', car_maker: 'BMW', model: 'tt', color: 'gris', mileage: '60000')

Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'pneumatiques', price: '80', pick_up_place: 'place du marché', return_place: 'place du marché', service_address: 'rue du garagiste', comment: ' ', status: '0', car_id: '3' , groom_id: '1')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'clés', price: '15', pick_up_place: 'place 1', return_place: 'place du marché', service_address: 'rue des clés', comment: ' ', status: '0', car_id: '2' , groom_id: '1')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'pneumatiques', price: '80', pick_up_place: 'place 2', return_place: 'place 2', service_address: 'rue 6', comment: ' ', status: '0', car_id: '3' , groom_id: '1')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'vidange', price: '30', pick_up_place: 'place 3', return_place: 'place 3', service_address: 'place de la victoire', comment: ' ', status: '0', car_id: '5' , groom_id: '1')
Order.create!(start_date: Date.today, end_date: Date.today + 1, service_type: 'revision', price: '120', pick_up_place: 'place 4', return_place: 'place 4', service_address: 'place du marché', comment: ' ', status: '0', car_id: '1' , groom_id: '1')


flo = User.create!(email: 'flo@gmail.com', password: 'flogmail')
sam = User.create!(email: 'sam@gmail.com', password: 'samgmail')
tim = User.create!(email: 'tim@gmail.com', password: 'timgmail')
ben = User.create!(email: 'ben@gmail.com', password: 'bengmail')
nico = User.create!(email: 'nico@gmail.com', password: 'nicogmail')

p1 = flo.profils.build(first_name: 'Flo', last_name: 'Dupont',address: '13 rue de la Gaité 59100 Roubaix', phone_number: '03 20 12 45 45')
p2 = sam.profils.build(first_name: 'Sam', last_name: 'Durant',address: '13 rue de la Gaité 59100 Roubaix', phone_number: '03 20 12 45 45')
p3 = tim.profils.build(first_name: 'Tim', last_name: 'Dubus',address: '13 rue de la Gaité 59100 Roubaix', phone_number: '03 20 12 45 45')
p4 = ben.profils.build(first_name: 'Ben', last_name: 'Ducar',address: '13 rue de la Gaité 59100 Roubaix', phone_number: '03 20 12 45 45')
p5 = nico.profils.build(first_name: 'Nico', last_name: 'Duroi',address: '13 rue de la Gaité 59100 Roubaix', phone_number: '03 20 12 45 45')

p1.save
p2.save
p3.save
p4.save
p5.save





