require( 'sinatra' )
require( 'pry')
require( 'sinatra/contrib/all' )


get '/' do
  erb(:index)
end
