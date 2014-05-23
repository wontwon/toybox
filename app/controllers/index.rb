require 'haml'

get '/' do
  @photos= Photo.all

  erb :index
end

get '/image/new' do

  haml :upload
end


post '/image/new' do
  Photo.create(params)
  return "success"
end

