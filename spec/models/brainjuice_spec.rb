require 'rails_helper'

RSpec.describe Brainjuice, type: :model do
    it { should have_many(:todos) }

    it { should validate_presence_of(:name) }
end
