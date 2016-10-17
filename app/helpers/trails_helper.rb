helpers do
  # def trails_maker(location)
  def trails_maker
    places = MapAdapter.trail

    # test_array = places.each_with_index{ |place, index|
    #   Trail.create(:name => place[index]["name"], :city => place[index]["city"], :description => place[index]["activities"].first["description"], :length => place[index]["activities"].first["length"])
    # }

    places.map do |trail|
      Trail.create(:name => trail["name"],
                   :city => trail["city"],
                   :description => trail["activities"].first["description"],
                   :length => trail["activities"].first["length"])
    end
  end
end
