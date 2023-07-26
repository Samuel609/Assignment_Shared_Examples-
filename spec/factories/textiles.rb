FactoryBot.define do
  factory :textile do
    name { Faker::Name.name }
    price { 1.5 }
    status { Faker::Lorem.word }
    description { Faker::Lorem.sentence}
    user 
  end
end
