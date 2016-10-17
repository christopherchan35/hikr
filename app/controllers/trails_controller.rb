get '/trails/new' do
  erb :'trails/new'
end

post '/trails' do
  @trail = Trail.create(:name => params[:name], :distance => params[:distance], :location => [:location])
  # @trails = trails_maker
  redirect '/'
end

get '/trails/:id' do
  @trail = Trail.find(params[:id])
  erb :'trails/show'
end
