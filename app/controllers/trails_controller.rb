post '/trails' do
  @trails = Trails.all
  p "what up"
  redirect '/'
end
