FactoryGirl.define do
  factory :user do
    sequence(:nickname) {|n| "#{Faker::Name.name}#{n}"}
    sequence(:name) {|n| "#{Faker::Name.name}#{n}"}
    gender "unknown"
    sign "#{Faker::Lorem.paragraph}"
    birthday Faker::Time.forward(4)
    avatar Faker::Placeholdit.image("50x50")
    password "0oM02u8x2"
    password_confirmation "0oM02u8x2"
  end
end
