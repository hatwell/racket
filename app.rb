require( 'sinatra' )
require( 'pry')
require( 'sinatra/contrib/all' )
require_relative('controllers/customers_controller')
require_relative('controllers/hauntings_controller')
require_relative('controllers/neghostiations_controller')
require_relative('models/ghost')
require_relative('models/service')
require ('./config/environments')

get '/' do
  erb(:index)
end
