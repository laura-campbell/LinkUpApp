# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
b_wayne = User.create(first_name: "Bruce", last_name: "Wayne", username: "Batman", email: "brucewayne@gmail.com" )
c_kent = User.create(first_name: "Clark", last_name: "Kent", username: "Superman", email: "clarkkent@gmail.com")
t_stark = User.create(first_name: "Tony", last_name: "Stark", username: "Ironman", email: "tonystark@gmail.com" )
p_parker = User.create(first_name: "Peter", last_name: "Parker", username: "Spider-Man", email: "peterpark@gmail.com")
s_summer = User.create(first_name: "Scott", last_name: "Summers", username: "Cyclops", email: "scottsummers@gmail.com")
c_xavier = User.create(first_name: "Charles", last_name: "Xavier", username: "Professor X", email: "charlesxavier@gmail.com")
e_linsher = User.create(first_name: "Eric", last_name: "Linsher", username: "Magneto", email: "ericlinsher@gmail.com")
b_banner = User.create(first_name: "Bruce", last_name: "Banner", username: "The Hulk", email: "brucebanner@gmail.com" )
r_richards = User.create(first_name: "Reed", last_name: "Richards", username: "Mr.Fantastic", email: "reedrichards@gmail.com")
n_summers = User.create(first_name: "Nathan", last_name: "Summers", username: "Cable", email: "nathansummmers@gmail.com")

hiking = Interest.create(name: "Hiking")
knitting = Interest.create(name: "Knitting")
running = Interest.create(name: "Running")
crime_fighting = Interest.create(name: "Crime Fighting")
working_out = Interest.create(name: "Working Out")
basketball = Interest.create(name: "Basketball")
spin_class = Interest.create(name: "Spin Class")
rock_climbing = Interest.create(name: "Rock Climbing")
surfing = Interest.create(name: "Surfing")
white_water_rafting = Interest.create(name: "White Water Rafting")

chelsea = Location.create(name:"Chelsea")
les = Location.create(name: "Lower East Side")
uws = Location.create(name: "Upper West Side")
west_village = Location.create(name: "West Village")
soho = Location.create(name: "Soho")
williamsburg = Location.create(name: "Williamsburg")
bensonhurst = Location.create(name: "Bensonhurst")
harlem = Location.create(name: "Harlem")
washington_heights = Location.create(name: "Washington Heights")
tribeca = Location.create(name: "Tribeca")


ui_1 = UserInterest.create(user_id: 1, interest_id: 2)
ui_2 = UserInterest.create(user_id: 1, interest_id: 1)
ui_3 = UserInterest.create(user_id: 1, interest_id: 3)
ui_4 = UserInterest.create(user_id: 2, interest_id: 1)
ui_5 = UserInterest.create(user_id: 2, interest_id: 3)
ui_6 = UserInterest.create(user_id: 2, interest_id: 5)
ui_7 = UserInterest.create(user_id: 3, interest_id: 4)
ui_8 = UserInterest.create(user_id: 3, interest_id: 3)
ui_9 = UserInterest.create(user_id: 3, interest_id: 6)
ui_10 = UserInterest.create(user_id: 5, interest_id: 1)


link_up1 = LinkUp.create(name: "First LinkUp", location_id: 1, description: "Stoked for linkup", datetime: Time.now)
link_up2 = LinkUp.create(name: "Lifting", location_id: 2, description: "Making dem gainzzzz", datetime: Time.now)
link_up3 = LinkUp.create(name: "Tattoooing", location_id: 3, description: "Making dem painnzzzz", datetime: Time.now)
link_up4 = LinkUp.create(name: "Laughing Convention", location_id: 6, description: "Make dem laughhsss", datetime: Time.now)
link_up5 = LinkUp.create(name: "Brazilian Jiu Jitsu", location_id: 1, description: "Someone will get tapped", datetime: Time.now)

host1 = Host.create(link_up_id: 1, user_id:1)
guest1 = Guest.create(link_up_id: 1, user_id:2)

host2 = Host.create(link_up_id: 2, user_id:3)
guest2 = Guest.create(link_up_id: 2, user_id:4)

host3 = Host.create(link_up_id: 3, user_id:5)
guest3 = Guest.create(link_up_id: 3, user_id:6)

host4 = Host.create(link_up_id: 4, user_id:7)
guest4 = Guest.create(link_up_id: 4, user_id:8)

host5 = Host.create(link_up_id: 5, user_id:2)
guest5 = Guest.create(link_up_id: 5, user_id:1)
