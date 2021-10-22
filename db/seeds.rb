User.create!(first_name: "Kiel", last_name: "Arneson", user_name: "kieldude", email: "kiel@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Peter", last_name: "Jang", user_name: "peterdude", email: "peter@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Blake", last_name: "Sims", user_name: "blakedude", email: "blake@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Jake", last_name: "Coker", user_name: "jakedude", email: "jake@test.com", password: "password", password_confirmation: "password")

Game.create!(api_id: 2, name: "Cincinnati at Notre Dame", away_team: "Cincinnati", away_team_conference: "American", home_team: "Notre Dame", home_team_conference: "Independent", stadium: "Notre Dame Stadium", address: "2010 Moose Krause Cir, Notre Dame, IN 46556", start_time: "2021-10-03T13:30:00-6:00")
Game.create!(api_id: 3, name: "Ole Miss at Alabama", away_team: "Ole Miss", away_team_conference: "SEC", home_team: "Alabama", home_team_conference: "SEC", stadium: "Bryant-Denny Stadium", address: "920 Paul W Bryant Dr, Tuscaloosa, AL 35401", start_time: "2021-10-03T14:30:00-6:00")

Tailgate.create!(user_id: 1, game_id: 2, name: "Arneson Family Tailgate", description: "Many words...", address: "731 12th St, Tuscaloosa, AL 35401", start_time: "2021-10-03T09:00:00-6:00", end_time: "2021-10-03T13:00:00-6:00")
Tailgate.create!(user_id: 2, game_id: 1, name: "Peter Party", description: "Many words...", address: "100, Eck Visitors Center, Notre Dame, IN 46556", start_time: "2021-10-03T11:00:00-6:00", end_time: "2021-10-03T13:00:00-6:00")

TailgateUser.create!(user_id: 2, tailgate_id: 2, requested: true, accepted: true, review: "Peter was awesome!", overall_rating: 7.8, truthful_rating: 10, location_rating: 8, hospitality_rating: 8, amenities_rating: 7, food_rating: 6, drink_rating: 4)
TailgateUser.create!(user_id: 4, tailgate_id: 1, requested: true, accepted: false)

Lodging.create!(user_id: 3, tailgate_id: 1, lodging_type: "Airbnb", lodging_name: "Paul's Northport house", address: "2015 McFarland Blvd, Northport, AL 35476")
Lodging.create!(user_id: 4, tailgate_id: 2, lodging_type: "hotel", lodging_name: "Marriot", address: "215 W Day Rd, Mishawaka, IN 46545")

Parking.create!(user_id: 3, tailgate_id: 1, parking_type: "street", address: "1201 Coliseum Dr, Tuscaloosa, AL 35401")
