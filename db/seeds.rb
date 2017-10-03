
# Volunteers (let's say 10 people signed up)
volunteers = []
100.times do
  volunteers << Volunteer.create({
    first_name: Faker::Name.first_name,
    middle_initial: (65 + rand(26)).chr,
    last_name: Faker::Name.last_name,
    date_of_birth: Faker::Time.between(90.years.ago, 18.years.ago, :all),
    political_interests: Faker::StarWars.specie,
  })
end

# In 2012, 1,503,662 voted in Michigan. For testing purposes, I'll make DB of 1,500 voters.
1500.times do |i|
  Voter.create({
    name: Faker::Name.name,
    age: Faker::Number.between(18, 90),
    location: Faker::Address.street_address,
    phone_number: Faker::Number.number(10),
    last_contact: Faker::Time.between(730.days.ago, Date.today, :all),
    volunteer_id: volunteers[i % volunteers.length].id,
  })
end
