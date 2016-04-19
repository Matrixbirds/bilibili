FactoryGirl.define do
  factory :video do
    title Faker::Name.name
    thumbnail Faker::Placeholdit.image("50x50")
  end
end
