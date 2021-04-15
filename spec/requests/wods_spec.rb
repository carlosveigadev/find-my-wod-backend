require 'rails_helper'

RSpec.describe 'Wods', type: :request do
  # initialize test data
  let(:user) { create(:user) }
  let!(:wods) { create_list(:wod, 10) }
  let(:wods_id) { wods.first.id }
  let(:headers) { valid_headers }

  describe 'GET /wods' do
    before { get '/api/v1/wods', params: {}, headers: headers }

    it 'returns wods' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /wods/:id' do
    before { get "/api/v1/wods/#{wods_id}", params: {}, headers: headers }

    context 'when wod exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
      it 'returns the wod item' do
        expect(json['id']).to eq(wods_id)
      end
    end
    context 'when wod does not exist' do
      let(:wods_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Wod with 'id'=0")
      end
    end
  end
end
