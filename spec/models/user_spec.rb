require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_secure_password }
  
  it { should have_many(:todos) }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
end
