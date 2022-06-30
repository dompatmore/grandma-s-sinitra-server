require 'sinatra'
require 'sinatra/reloader' if development?


# get '/' do
#     'Hi, sassy grandma!'
# end

get '/:name?' do |name|
    erb :index, :locals => {:name=>name} 
end

