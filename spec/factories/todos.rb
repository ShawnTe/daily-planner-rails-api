FactoryGirl.define do
  factory :todo do
    task { Faker::Lorem.word }
    details { Faker::Lorem.word }
    status "active"

    time_estimates = [5, 15, 30, 60]
    time_estimate { time_estimates.sample }

    brainjuice
    today
    user
  end
end
