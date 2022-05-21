FactoryBot.define do
  factory :post do
    title {Faker::Movie.title}
    genre_id { 3 }
    text {Faker::Lorem.sentence}
  end
end