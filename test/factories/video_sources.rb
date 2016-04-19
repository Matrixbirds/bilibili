FactoryGirl.define do
  factory :video_source do
    source_name Faker::Name.name
    source_url Faker::Placeholdit.image("50x50")
    source_thumbnail Faker::Placeholdit.image("50x50")
    provider "bilibili"
    association :video
  end
end
