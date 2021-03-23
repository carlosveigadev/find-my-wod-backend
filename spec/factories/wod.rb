FactoryBot.define do
  factory :wod do
    title { Faker::Name.first_name }
    description { Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false) }
    image { Faker::Alphanumeric.alphanumeric(number: 10) }
  end
end
