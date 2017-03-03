require 'rails_helper'

RSpec.describe 'Container API' do
  let!(:containers) { create_list(:container, 3) }
  let(:container_id) { container.first.id }

  describe 'GET /containers' do
    before { get "/containers" }

    it 'returns containers' do
    end

    end

end
