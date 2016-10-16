get '/' do
  # @api_key = ENV['YOUR_API_KEY']
  # @trails = Trail.all
  # @trails.to_json
  erb :index
end

post '/' do
  @trails = Trail.all
  if request.xhr?
    # @trails.to_json
    erb :'partials/_trails', layout: false, locals: {trails: @trails}
  else
    redirect '/'
  end
  # fucking partial shit, layout false
  # good shit
end

get '/session-viewer' do
  p session
end

get '/session-clearer' do
  p session
  session.clear
  p session
end
