require 'faker'
require_relative '../../db/config'
require_relative 'teacher'

# 8.times do
# p  Teacher.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.phone_number, address: Faker::Address.street_address)
# end

p Teacher.create(first_name: "Loy", last_name: "Kiehn", address: "935 Diego Point", email: "cristian@nikolaus.net", phone_number: "(526)232-4387")
p Teacher.create(first_name: "Loy", last_name: "Kiehn", address: "935 Diego Point", email: "cristian@nikolaus.net", phone_number: "(526)232-4387")
p t = Teacher.create(first_name: "Loy", last_name: "Kiehn", address: "935 Diego Point", email: "cristian@nikolaus.net", phone_number: "(526)232-4387")

p t.errors

# @messages={:email=>["has already been taken"], :first_name=>["name already used"]}>

