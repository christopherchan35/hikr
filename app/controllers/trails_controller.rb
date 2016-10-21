get '/trails/new' do
  erb :'trails/new'
end

# post '/trails' do
#   @trail = Trail.find(params[:id])
#   #   @trail
#   # else
#   #   @trail = Trail.find_or_create_by(:name => params[:name], :city => params[:city], :description => [:description], :length => [:length], :lat => params[:lat], :lon => params[:lon])
#   # # @trails = trails_maker
#   # end
#     redirect '/'
# end

get '/trails/:id' do
  p params
  @trail = Trail.find(params[:id])
  erb :'trails/show'
end

get '/trails/show/:id' do
  p "*" * 30
  p params
  @trail = Trail.find(params[:id])
  if request.xhr?
    # @trail.to_json
    erb :'/trails/show', layout: false
    #
  end
  # "woo"
end
