require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/puppy/new' do
    @puppy = Puppy.new(params)

   erb :create_puppy
   binding.pry
  end

  post '/puppy' do
  end
end
