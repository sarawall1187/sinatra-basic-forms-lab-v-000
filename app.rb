require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
      #  binding.pry
    @puppy = Puppy.new(params)
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]

   erb :display_puppy

  end

  # post '/puppy' do
  # end
end
