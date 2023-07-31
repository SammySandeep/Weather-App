class WeatherController < ApplicationController
    def index
      city = params[:city] || 'Delhi' # Default city is London
      @weather_data = fetch_weather_data(city)
    end
  
    private
  
    def fetch_weather_data(city)
      api_key = ENV['OPENWEATHERMAP_API_KEY']
      url = "http://api.openweathermap.org/data/2.5/forecast?q=#{city}&appid=#{api_key}&units=metric"
      response = HTTParty.get(url)
      return nil unless response.code == 200
  
      JSON.parse(response.body)
    end
  end