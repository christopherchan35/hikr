helpers do
  # def trails_maker(location)
  def trails_maker
    places = MapAdapter.trail

    places.map do |trail|
      Trail.create(:name => trail["name"],
                   :city => trail["city"],
                   :description => trail["activities"].first["description"],
                   :length => trail["activities"].first["length"])
    end
  end
end
