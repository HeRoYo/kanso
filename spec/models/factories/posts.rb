FactoryBot.define do
  factory :post do
    title     {Faker::Movie.title(max_length: 20)}
    genre_id  {2}
    text      {Faker::Lorem.sentence(max_length: 10000)}
  end
end