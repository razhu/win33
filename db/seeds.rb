# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email



100.times do |counter|
  Advertise.create(
           title: Faker::Company.name,
           description: Faker::Lorem.paragraph,
           price: Faker::Number.number(5),
           direction: Faker::Address.street_address,
           phone_contact: Faker::PhoneNumber.phone_number,
           negotiable: Faker::Number.digit % 2



  )
end
puts "created 100 advertises"