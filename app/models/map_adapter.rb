require 'httparty'

module MapAdapter
  include HTTParty

    KEY = ENV['YOUR_API_KEY']
    CLIENT = "&ClientID="
    BASE_URI = "https://maps.googleapis.com/maps/api/geocode/json?address="
    format :json

    def self.search(zipcode)
      # p BASE_URI
      # p zipcode
      # p CLIENT
      # p KEY
      new_url = base_uri + zipcode + client + KEY
    end

    # 17 W 4th Ave, Crescent City, CA 95531&ClientID=AIzaSyA2zYqN5QkvbJYb7neHEB2zO4MQt6u6iig

end

# MapAdapter::KEY
# p MapAdapter.search('94116')
