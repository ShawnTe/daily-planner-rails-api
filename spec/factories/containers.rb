FactoryGirl.define do
  factory :container do
    date { Date.today }
    status 'open'

    time_container { [15, 30, 60, 120].sample }
  end
end
