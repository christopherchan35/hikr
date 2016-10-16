get '/trails/new' do
  erb :'trails/new'
end

post '/trails' do
  @trail = Trail.create(:name => params[:name], :distance => params[:distance], :location => [:location])
  redirect '/'
end

# get '/' do
#   # @trails = Trail.all
#   # p @trails
#   p "*" * 30
#   erb :index
# end
#
# # post '/trails' do
# #   @trails = Trails.all
# #   p "what up"
# #   redirect '/'
# # end
