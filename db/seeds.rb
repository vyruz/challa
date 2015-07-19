# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# users = User.create!([{ username: 'Tester', email: 'tester@testing.com', password_digest 'aabbccdd' , image: image.png , role: 'challenger' , points: 0}])
admin = User.create!(username: 'admin', email: 'admin@challa.com', password_digest: 'password', image: "admin.png", role: 'admin', points:25000)
sam = User.create!(username: 'scameron', email: 'samantha.cameron@viasat.com', password_digest: 'asdfghjkl;', image: "scameron.png" , role: 'challenger', points:200)
ben = User.create!(username: 'bcarson' , email: 'carsonrocks@bencarson.com'  , password_digest: 'gg56iiieo9' , image: "bcarson.png" , role: 'challenger' , points:300)
jerry = User.create!(username: 'jgarcia' , email: 'longstrangetrip@deadhead.com'  , password_digest: '990088uu' , image: "jgarcia.png" , role: 'challenger' , points:1300)
ted = User.create!(username: 'thenuge' , email: 'catscratch@controversy.com'  , password_digest: '88997766' , image: "thenuge.png" , role: 'challenger' , points:1800)
luke = User.create!(username: 'theforce' , email: 'luke@empire.com'  , password_digest: 'asasdfdf' , image: "theforce.png" , role: 'challenger' , points:3500)

categories = Category.create!([{name: 'Education'}, {name: 'Humanitarian'}, {name: 'What Interns Want'},{name: 'Getting started with Challa'},{name: 'Wildcard'}, {name: 'Fitness'}])

# challenges = Challenge.create!([{name: 'test challenge 1', description: " it's just a test", image: filename.png, category_id: categories[0].id])

profile = Challenge.create!(name: 'Complete your profile', description: 'Congratulations on joining Challa! You will receive 250 points just for completing your profile! Get started now, upload a profile picture and provide a brief description of yourself.',  category_id: categories[3].id)

flag = Challenge.create!(name: 'Climb a Flag Pole', description: 'If you can climb a flag pole that is at least 10 feet high then Upload a video to redeem the points.', category_id: categories[4].id)

mabel = Challenge.create!(name: 'Help Mabel fix her roof', description: 'Mabel Ruthridge is a 72 year old lifelong resident of Pleasantville, and she has a leak in her roof. She cannot afford repairs on her Social Security income.  Lets help her!' category_id: categories[1].id)

haiti = Challenge.create!(name: 'Water filters for Haiti', description: "Access to clean drinking water is a major problem facing the residents of Haiti. Let's pull together " \
'to provide 100 water filters. The filters cost $60 each.')

runner = Challenge.create!(name: 'Run a half marathon with Mom!', description: 'I want my daughter to train and run a half marathon with me!', category_id: categories[5].id)

puppy = Challenge.create!(name: 'Find homes for 50 rescue animals.', description: 'We want to find a good home for 50 pets from the animal shelter. Visit the shelter if possible, take pictures and post on social media.', category_id: categories[1].id)

pizza = challenge.create!(name: 'Procure a ginormous pizza!', description: 'Any intern who procures a pizza over 24 inches in diameter wins this challenge!', category_id: categories[2].id)

stopCoding = challenge.create!(name: 'Stop coding and go outside!', description: 'Last one to the beach is a rotten egg...', category_id: categories[2].id)

math = challenge.create!(name: 'Learn to multiply', description: 'I challenge Luke Skywalker to learn simple multiplication tables.', category_id: categories[0].id)

# image = image.create!(challenge_id: profile.id, image: 'puppy.png')
puppyPic = image.create!(challenge_id: puppy.id, image: 'puppy.png')
profilePic = image.create!(challenge_id: profile.id, image: 'profile.png')
haitiPic = image.create!(challenge_id: haiti.id, image: 'haiti.png')
flagPic = image.create!(challenge_id: flag.id, image: 'flag.png')
mabelPic = image.create!(challenge_id: mabel.id, image: 'mabel.png')
runnerPic = image.create!(challenge_id: runner.id, image: 'runners.png')
pizzaPic = image.create!(challenge_id: pizza.id, image: 'pizza.png')
beachPic = image.create!(challenge_id: stopCoding.id, image: 'surf.png')
multiplyPic = image.create(challenge_id: math.id, image: 'multiply.png')


# bounty = Bounty.create!(challenge_id: x.id, user_idsam.id, points: 50)
profileBounty = Bounty.create!(challenge_id: profile.id, user_id: admin.id, points: 250)
flagBounty = Bounty.create!(challenge_id: flag.id, user_id: sam.id, points:50)
