require 'rails_helper'

RSpec.describe Today, type: :model do
  it { should belong_to(:brainjuice) }
end
