require 'httparty'
require 'dotenv'

module MapAdapter
  include HTTParty

    KEY=ENV['YOUR_API_KEY']
    base_uri = "https://maps.googleapis.com/maps/api/geocode/json?address="
    format :json

    # 17 W 4th Ave, Crescent City, CA 95531&ClientID=AIzaSyA2zYqN5QkvbJYb7neHEB2zO4MQt6u6iig

end

# MapAdapter::KEY
