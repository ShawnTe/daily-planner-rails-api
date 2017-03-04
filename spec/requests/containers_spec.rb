require 'rails_helper'

RSpec.describe 'Container API', type: :request do
  let!(:containers) { create_list(:container, 3) }
  let(:container_id) { containers.first.id }

  describe 'GET /containers' do
    before { get "/containers" }

    it 'returns containers' do
      expect(json).not_to be_empty
      expect(json['data'].size).to eq(3)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /todos/:id' do
    before { get "/containers/#{container_id}"}

    context 'when the record exists' do
      it 'returns the container' do
        expect(json).not_to be_empty
        expect(json['data']['id'].to_i).to eq(container_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
    context 'when the record does not exist' do
      let(:container_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Container/)
      end
    end
  end


  describe 'POST /containers' do
    let(:valid_attributes) { { time_container: 120, date: Date.today, brainjuice_id: 1 } }

    context 'when the request is valid' do
      before { post '/containers', params: valid_attributes }

      it 'creates a container' do
        p json
        expect(json['data']['attributes']['brainjuice_id']).to eq(1)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/containers', params: { time_container: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match('Validation failed: Time container must be a number')
      end
    end
  end

  describe 'PUT /containers/:id' do
    let(:valid_attributes) { { time_container: 90, brainjuice_id: 2 } }

    context 'when the record exists' do
      before { put '/containers/:id', params: :valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /containers/:id' do
    before { delete "/containers/#{container_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
