require 'rails_helper'

RSpec.describe Container, type: :model do
  it { should have_many(:todos) }
end
