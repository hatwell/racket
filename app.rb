require( 'sinatra' )
require( 'pry')
require( 'sinatra/contrib/all' )

#change
get '/' do
  erb(:index)
end

get '/jobs/new' do
  erb(:new_job)
end
