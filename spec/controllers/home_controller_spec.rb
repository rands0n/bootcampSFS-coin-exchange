require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index

      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #exchange' do
    before do
      json = JSON.parse(File.read('./spec/fixtures/currency_list.json'))
      @currency, @currency_location = json['currency_list'].sample(2)
      @quantity = rand(1..9999)
    end

    it 'should return http status 200' do
      get :exchange, params: {
        currency: @currency,
        currency_location: @currency_location,
        quantity: @quantity
      }

      expect(response).to have_http_status :success
    end

    it 'should return a Numeric value' do
      get :exchange, params: {
        currency: @currency,
        currency_location: @currency_location,
        quantity: @quantity
      }
      value = JSON.parse(response.body)['value']

      expect(value.is_a? Numeric).to eql true
    end
  end
end
