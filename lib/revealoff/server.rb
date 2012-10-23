require 'sinatra/base'

module Revealoff
  class Server < Sinatra::Application
    puts File.expand_path('../public', __FILE__)
    set :public_folder, File.expand_path('../public', __FILE__)
    set :views, File.expand_path('../views', __FILE__)


    get "/" do
      erb :index
    end
  end
end
