require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @birthday = params[:birthday]
    @name = params[:name]
    @today = Date.today.strftime('%Y-%m-%d')
    erb(:birthday)

  end

  run! if app_file == $0

end
