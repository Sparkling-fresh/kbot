require 'sinatra'
require './config'
 
get '/' do
   erb :index
end
post '/' do
   @nombre= params['nombre']
   erb :index
end
