FactoryGirl.define do
  factory :brainjuice do
    status  'active' 

    names = ["focus", "creative", "busy"]
    name { names.sample }
  end
end
