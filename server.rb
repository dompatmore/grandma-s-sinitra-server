require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'

#DO NOT DO THIS IN YOUR PROJECT!
connection = PG::Connection.open(
    :host =>'35u4rftguyihjopoiufghyujkik',
     :port => 5432,
     :dbname => 'trdckygvjuyhg7yv,hb.jkkpigv',
      :user => '6tr7fgcvh8y7yf6tgcvhbhu8hyg',
       :password => 'r6ft5t cgvmr65fu7ghcv nkfrutyvglgjhbmn')

get '/' do
    "Hey there!"
end

get '/greeting/:name?' do |name|
    erb :index, :locals => {:name => name}
end

get '/pets' do
    number_of_pets = connection.exec_params("select name from pets").values[1]
    number_of_pets
end