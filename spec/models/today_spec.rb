require 'rails_helper'

RSpec.describe Today, type: :model do
  it { should have_many(:todos) }
  
end
