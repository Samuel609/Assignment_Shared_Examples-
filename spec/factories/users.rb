FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    age { 1 }
    gender { true }
  end
end
