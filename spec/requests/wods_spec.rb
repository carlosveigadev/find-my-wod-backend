require 'rails_helper'

RSpec.describe 'Wods', type: :request do
  # initialize test data
  let!(:wods) { create_list(:wod, 10) }
  let(:wods_id) { wods.first.id }
  describe 'GET /wods' do
    before { get '/api/v1/wods' }
    it 'returns wods' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET /wods/:id' do
    before { get "/api/v1/wods/#{wod_id}" }
    context 'when wod exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
      it 'returns the wod item' do
        expect(json['id']).to eq(wod_id)
      end
    end
    context 'when wod does not exist' do
      let(:wod_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find wod with 'id'=0")
      end
    end
  end
  describe 'POST /wods/:id' do
    let!(:history) { create(:category) }
    let(:valid_attributes) do
      { title: 'Whispers of Time', author: 'Dr. Krishna Saksena',
        category_id: history.id }
    end
    context 'when request attributes are valid' do
      before { post '/api/v1/wods', params: valid_attributes }
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
    context 'when an invalid request' do
      before { post '/api/v1/wods', params: {} }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns a failure message' do
        expect(response.body).to include("can't be blank")
      end
    end
  end
  describe 'PUT /wods/:id' do
    let(:valid_attributes) { { title: 'Saffron Swords' } }
    before { put "/api/v1/wods/#{wod_id}", params: valid_attributes }
    context 'when wod exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
      it 'updates the wod' do
        updated_item = wod.find(wod_id)
        expect(updated_item.title).to match(/Saffron Swords/)
      end
    end
    context 'when the wod does not exist' do
      let(:wod_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find wod with 'id'=0")
      end
    end
  end
  describe 'DELETE /wods/:id' do
    before { delete "/api/v1/wods/#{wod_id}" }
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
