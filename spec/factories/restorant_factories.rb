FactoryGirl.define do
  factory :restorant do
    name          { Faker::Company.name }
    address       { Faker::Address.street_address }
    longitude     { Faker::Address.longitude.to_f }
    latitude      { Faker::Address.latitude.to_f }
    averagesum    { Faker::Number.decimal(2) }
    worktime      { ["9:00 - 23:00", "11:00 - 2:00", "9.30 - 00:00", "10:00 - 1:00"].sample }
    phone         { Faker::PhoneNumber.cell_phone }
    imageurls     { (0..Random.rand(10)).map { Faker::Placeholdit.image } }
    description   { Faker::Lorem.paragraph }
    rating        { Random.rand(10) }
    atmosfere_ids { (0..Random.rand(5)).map { Random.rand(5) } }

    factory :restorant_invalid do
      name nil
    end
  end
end