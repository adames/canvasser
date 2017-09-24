
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# In 2012, 1,503,662 voted in Michigan. For testing purposes, I'll make DB of 150 voters.
150.times do
  Voter.create({
    name: Faker::Name.name,
    age: Faker::Number.between(18, 90),
    location: `#{Faker::Address.street_address}, #{Faker::Address.city}, MI #{Faker::Number.number(5)}`,
    phone_number: Faker::Number.number(10),
    last_contact: Faker::Time.between(730.days.ago, Date.today, :all)
  })
end
