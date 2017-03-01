FactoryGirl.define do
  factory :today do
    date { Date.today }
    status 'open' 

    time_containers = [15, 30, 60, 120]
    time_container { time_containers.sample }
  end
end
