FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name  { Faker::Name.last_name }
    email { Faker::Internet.email }
    contact { Faker::PhoneNumber.cell_phone_in_e164  }
    password { Faker::Internet.password }
  end
end
