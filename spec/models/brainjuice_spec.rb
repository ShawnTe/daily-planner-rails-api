require 'rails_helper'

RSpec.describe Brainjuice, type: :model do
  it "is valid with valid attributes" do
    brainjuice = create(:brainjuice)
    expect(brainjuice).to be_valid
  end

    it { should have_many(:todos) }

    it { should validate_presence_of(:name) }
end
