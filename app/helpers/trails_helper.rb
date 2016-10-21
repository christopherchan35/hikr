helpers do
  # def trails_maker(location)
  def trails_maker
    places = MapAdapter.trail

    places.map do |trail|
      Trail.find_or_create_by(:name => trail["name"],
                   :city => trail["city"],
                   :description => trail["activities"].first["description"],
                   :length => trail["activities"].first["length"])#,
                   #:lat => trail["lat"],
                   #:lon => trail["lon"])
    end
  end
end
