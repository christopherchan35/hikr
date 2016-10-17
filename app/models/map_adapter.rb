require 'httparty'

module MapAdapter
  include HTTParty

    KEY = ENV['YOUR_API_KEY']
    TRAIL = ENV['TRAIL_KEY']
    CLIENT = "&ClientID="
    BASE_URI = "https://maps.googleapis.com/maps/api/geocode/json?address="
    # format :json

    def self.search(zipcode)
      # p BASE_URI
      # p zipcode
      # p CLIENT
      # p KEY
      # new_url = base_uri + zipcode + client + KEY
    end

    # These code snippets use an open-source library. http://unirest.io/ruby
    def self.trail
    response = Unirest.get "https://trailapi-trailapi.p.mashape.com/?lat=37.784&limit=25&lon=-122.399&q[activities_activity_type_name_eq]=hiking&q[state_cont]=California&radius=25",
  headers:{
    "X-Mashape-Key" => ENV['TRAIL_KEY'],
    "Accept" => "text/plain"
    }
    places = response.body["places"]
    # p places.first["city"]
    # p places.first["name"]
    # p places.first["activities"].first["description"]
    # p places.first["activities"].first["length"]
    # places
  end


end

# MapAdapter::KEY
# p MapAdapter.search('94116')
