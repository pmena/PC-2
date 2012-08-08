require 'sinatra'

class App < Sinatra::Base

get '/hi' do
  "Hello World!"

end

get '/usuario' do
  erb :index
end

post '/usuario' do
  @username = params[:username]
  @nombre = params[:nombre]
  @paterno = params[:paterno]
  @materno = params[:materno]
  @estado = ""

  if((@username!="")&&(@nombre!="")&&(@paterno!="")&&(@materno!=""))
  	erb :mensaje
  else
  	@estado = "error"
  	erb :index	
  end
end

# start the server if ruby file executed directly
  run! if app_file == $0

end