FactoryGirl.define do
  factory :atmosfere do
    name "Romantic"

    factory :atmosfere_invalid do
      name nil
    end
  end
end