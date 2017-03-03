FactoryGirl.define do
  factory :brainjuice do
    status  'active'

    name { ["focus", "creative", "busy"].sample }
  end
end
