get '/trails/new' do
  erb :'trails/new'
end

post '/trails' do
  @trail = Trail.create(:name => params[:name], :city => params[:city], :description => [:description], :length => [:length])
  # @trails = trails_maker
  redirect '/'
end

get '/trails/:id' do
  p params
  @trail = Trail.find(params[:id])
  erb :'trails/show'
end
