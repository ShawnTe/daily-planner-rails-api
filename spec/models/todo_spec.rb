require 'rails_helper'

RSpec.describe Todo, type: :model do
  it "is valid with valid attributes" do
    todo = create(:todo)
    expect(todo).to be_valid
  end

  it { should belong_to(:brainjuice) }
  it { should belong_to(:user) }
  it { should belong_to(:container) }


  it { should validate_presence_of(:task) }
  it { should validate_presence_of(:brainjuice) }
  it { should validate_presence_of(:time_estimate) }
end
