User.create!(first_name: "Kiel", last_name: "Arneson", user_name: "kieldude", email: "kiel@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Peter", last_name: "Jang", user_name: "peterdude", email: "peter@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Blake", last_name: "Sims", user_name: "blakedude", email: "blake@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Jake", last_name: "Coker", user_name: "jakedude", email: "jake@test.com", password: "password", password_confirmation: "password")

Tailgate.create!(user_id: 1, game_id: 2, name: "Arneson Family Tailgate", description: "Many words...", address: "731 12th St, Tuscaloosa, AL 35401", start_time: "2021-10-03T09:00:00-6:00", end_time: "2021-10-03T13:00:00-6:00")
Tailgate.create!(user_id: 2, game_id: 1, name: "Peter Party", description: "Many words...", address: "100, Eck Visitors Center, Notre Dame, IN 46556", start_time: "2021-10-03T11:00:00-6:00", end_time: "2021-10-03T13:00:00-6:00")

Lodging.create!(user_id: 3, tailgate_id: 1, lodging_type: "Airbnb", lodging_name: "Paul's Northport house", address: "2015 McFarland Blvd, Northport, AL 35476")
Lodging.create!(user_id: 4, tailgate_id: 2, lodging_type: "hotel", lodging_name: "Marriot", address: "215 W Day Rd, Mishawaka, IN 46545")

Parking.create!(user_id: 3, tailgate_id: 1, parking_type: "street", address: "1201 Coliseum Dr, Tuscaloosa, AL 35401")
