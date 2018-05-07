require 'ffaker'

100.times do
  User.create(
    age: rand(5..80),
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name
  )
end
