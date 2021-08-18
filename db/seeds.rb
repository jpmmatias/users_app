5.times do
  User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    password: Faker::Internet.password
  )
end
