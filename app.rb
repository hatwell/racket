require( 'sinatra' )
require( 'pry')
require( 'sinatra/contrib/all' )

#change
get '/' do
  erb(:index)
end

get '/job/new' do
  erb(:new_job)
end

post '/jobs' do
  job = Job.new(params)
  job.save()
  erb(:index)
end
