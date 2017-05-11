require 'rails_helper'

RSpec.describe Container, type: :model do
  it "is valid with valid attributes" do
    container = create(:container)
    expect(container).to be_valid
  end

  it { should have_many(:todos) }

  it { should validate_presence_of(:brainjuice) }
end
