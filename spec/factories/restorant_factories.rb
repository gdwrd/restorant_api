FactoryGirl.define do
  factory :restorant do
    name        Faker::Company.name
    address     Faker::Address.street_address
    longitude   Faker::Address.longitude
    latitude    Faker::Address.latitude
    averagesum  Faker::Number.decimal(2)
    worktime    "9:00 - 23:00"
    phone       Faker::PhoneNumber.cell_phone
    imageurls   (0..Random.rand(10)).map { Faker::Placeholdit.image }
    description Faker::Lorem.paragraph
    rating      Random.rand(10)

    factory :restorant_invalid do
      name nil
    end
  end
end