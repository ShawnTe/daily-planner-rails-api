require 'rails_helper'

RSpec.describe Brainjuice, type: :model do
    it { should have_many(:todos) }
    it { should have_many(:todays) }

    it { should validate_presence_of(:name) }
end
