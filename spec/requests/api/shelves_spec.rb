require 'rails_helper'

describe 'PUT /api/shelves/:id' do
  let(:shelf) { create(:shelf) }
  context 'correct parameters' do
    it 'returns 200 OK' do
      put "/api/shelves/#{shelf.id}", params: { position: 1 }
      expect(response.status).to eq(200)
    end
  end

  context 'position is not given' do
    it 'return 422 unprocessable entity' do
      put "/api/shelves/#{shelf.id}"
      expect(response.status).to eq(422)
    end
  end
end
