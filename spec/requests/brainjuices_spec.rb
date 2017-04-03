require 'rails_helper'

RSpec.describe 'Brainjuices API', type: :request do

  let!(:brainjuices) { create_list(:brainjuice, 3) }
  let(:brainjuice_id) {brainjuices.first.id}

  describe 'GET /brainjuices' do
    before { get '/brainjuices' }

    it 'returns brainjuices' do
      expect(json).not_to be_empty
      expect(json["data"].size).to eq(3)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /brainjuices/:id' do
    before { get "/brainjuices/#{brainjuice_id}" }

    context 'when the record exists' do
      it 'returns the brainjuice' do
        expect(json).not_to be_empty
        expect(json['data']['id'].to_i).to eq(brainjuice_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:brainjuice_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Brainjuice/)
      end
    end
  end

  describe 'POST /brainjuices' do
    let (:valid_attributes) { { name: 'Focus', status: 'Active' } }

    context 'when the request is valid' do
      before { post '/brainjuices', params: valid_attributes }

      it 'creates a brainjuice' do
        expect(json['data']['attributes']['name']).to eq('Focus')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/brainjuices', params: {name: ""} }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match("Validation failed: Name can't be blank")
      end
    end
  end

  describe 'PUT /brainjuices/:id' do
    let (:valid_attributes) { { status: 'Inactive' } }

    context 'when the record exists' do
      before { put "/brainjuices/#{brainjuice_id}", params: valid_attributes }

      it 'updates teh record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  describe 'DELETE /brainjuices/:id' do
    before { delete "/brainjuices/#{brainjuice_id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
