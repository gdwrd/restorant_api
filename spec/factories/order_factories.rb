FactoryGirl.define do
  factory :order do
    name      Faker::Name.name
    phone     Faker::PhoneNumber.cell_phone
    datetime  Faker::Time.backward(5, :evening)
    quantity  Faker::Number.between(1, 5)
    association :restorant

    factory :order_invalid do
      phone nil
      email nil
    end
  end
end