User.create!(first_name: "Kiel", last_name: "Arneson", user_name: "kieldude", email: "kiel@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Peter", last_name: "Jang", user_name: "peterdude", email: "peter@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Blake", last_name: "Sims", user_name: "blakedude", email: "blake@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Bryce", last_name: "Young", user_name: "brycedude", email: "bryce@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Jake", last_name: "Coker", user_name: "jakedude", email: "jake@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Reuben", last_name: "Foster", user_name: "reubendude", email: "reuben@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Minkah", last_name: "Fitzpatrick", user_name: "minkahdude", email: "minkah@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Eddie", last_name: "Jackson", user_name: "eddiedude", email: "eddie@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Koolaid", last_name: "McKinstry", user_name: "koolaiddude", email: "koolaid@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Will", last_name: "Anderson", user_name: "willdude", email: "will@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Dylan", last_name: "Moses", user_name: "dylandude", email: "dylan@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Jojo", last_name: "Earle", user_name: "jojodude", email: "jojo@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Ty", last_name: "Simpson", user_name: "tydude", email: "ty@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Emmanuel", last_name: "Henderson", user_name: "emmanueldude", email: "emmanuel@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Patrick", last_name: "Surtain", user_name: "patrickdude", email: "patrick@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Josh", last_name: "Jobe", user_name: "joshdude", email: "josh@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Damon", last_name: "Payne", user_name: "damondude", email: "damon@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Nick", last_name: "Saban", user_name: "coach", email: "coach@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Kirby", last_name: "Smart", user_name: "kirbydude", email: "kirby@test.com", password: "password", password_confirmation: "password")
User.create!(first_name: "Pete", last_name: "Golding", user_name: "petedude", email: "pete@test.com", password: "password", password_confirmation: "password")

# Total 50 games
Game.create!(api_id: 2, name: "Cincinnati at Notre Dame", away_team: "Cincinnati", away_team_conference: "American", home_team: "Notre Dame", home_team_conference: "Independent", stadium: "Notre Dame Stadium", address: "2010 Moose Krause Cir, Notre Dame, IN 46556", start_time: "2021-10-03T13:30:00-6:00")
Game.create!(api_id: 3, name: "Ole Miss at Alabama", away_team: "Ole Miss", away_team_conference: "SEC", home_team: "Alabama", home_team_conference: "SEC", stadium: "Bryant-Denny Stadium", address: "920 Paul W Bryant Dr, Tuscaloosa, AL 35401", start_time: "2021-10-03T14:30:00-6:00")

# Total 100 tailgates
Tailgate.create!(user_id: 1, game_id: 2, name: "Arneson Family Tailgate", description: "Many words...", address: "731 12th St, Tuscaloosa, AL 35401", start_time: "2021-10-03T09:00:00-6:00", end_time: "2021-10-03T13:00:00-6:00")
Tailgate.create!(user_id: 2, game_id: 1, name: "Peter Party", description: "Many words...", address: "100, Eck Visitors Center, Notre Dame, IN 46556", start_time: "2021-10-03T11:00:00-6:00", end_time: "2021-10-03T13:00:00-6:00")

# Dont think I really need any of this stuff in the seeds file unless rails starts yelling at me about it
TailgateUser.create!(user_id: 2, tailgate_id: 2, game_id: 1, requested: true, accepted: true, review: "Peter was awesome!", overall_rating: 7.8, truthful_rating: 10, location_rating: 8, hospitality_rating: 8, amenities_rating: 7, food_rating: 6, drink_rating: 4)
TailgateUser.create!(user_id: 4, tailgate_id: 1, game_id: 2, requested: true, accepted: false)

Parking.create!(tailgate_user_id: 1, parking_type: "street", address: "1201 Coliseum Dr, Tuscaloosa, AL 35401")
Parking.create!(tailgate_user_id: 2, parking_type: "garage", address: "345 N 3rd St, Tuscaloosa, AL 35401")

Lodging.create!(tailgate_user_id: 1, lodging_type: "Airbnb", lodging_name: "Paul's Northport house", address: "2015 McFarland Blvd, Northport, AL 35476")
Lodging.create!(tailgate_user_id: 2, lodging_type: "hotel", lodging_name: "Marriot", address: "215 W Day Rd, Mishawaka, IN 46545")
