# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
40.times do
  company = Faker::Company.name
  name = Faker::Name.name
  email = Faker::Internet.email
  phone = '09011112222'
  content = Faker::Lorem.sentence
  status = rand(0..2)
  Contact.create!(
    [
      {
        company: company,
        name: name,
        email: email,
        phone: phone,
        content: content,
        status: status
      }
    ]
  )
end

User.create!(
  email: 'test1@test.com',
  password: 'hogehoge'
)
