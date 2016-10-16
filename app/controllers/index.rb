get '/' do
  # @api_key = ENV['YOUR_API_KEY']
  @trails = Trail.all
  erb :index
end

get '/session-viewer' do
  p session
end

get '/session-clearer' do
  p session
  session.clear
  p session
end
