require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/word_def')

get('/') do
  @words = Words.all()
  erb(:index)
end

get('/defs') do

  erb(:defs)
end
