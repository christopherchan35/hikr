get '/' do
  @trails = Trail.all

end

post '/trails' do
  @trails = Trails.all
  p "what up"
  redirect '/'
end
