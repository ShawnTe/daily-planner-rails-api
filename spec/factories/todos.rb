FactoryGirl.define do
  factory :todo do
    task { Faker::Lorem.word }
    details { Faker::Lorem.sentence }
    status "active"

    time_estimate { [5, 15, 30, 60].sample }

    brainjuice
    container
    user
  end
end
