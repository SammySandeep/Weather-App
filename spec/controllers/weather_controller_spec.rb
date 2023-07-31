require 'rails_helper'

RSpec.describe WeatherController, type: :controller do
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'assigns weather data for a city to @weather_data' do
      allow(controller).to receive(:fetch_weather_data).and_return({ 'city' => { 'name' => 'Delhi' } })
      get :index, params: { city: 'Delhi' }
      expect(assigns(:weather_data)).to eq({ 'city' => { 'name' => 'Delhi' } })
    end

    it 'defaults to Delhi if no city is provided' do
      allow(controller).to receive(:fetch_weather_data).and_return({ 'city' => { 'name' => 'Delhi' } })
      get :index
      expect(assigns(:weather_data)).to eq({ 'city' => { 'name' => 'Delhi' } })
    end
  end
end
