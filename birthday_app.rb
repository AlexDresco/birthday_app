require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/birthday' do
    @name = params[:birthday]
    @name = params[:name]
    erb(:birthday)
  end

  run! if app_file == $0

end
