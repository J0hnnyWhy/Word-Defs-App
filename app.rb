require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/word_def')

get('/') do
   @word = Word.all()
  erb(:index)
end

get('/defs') do
end

#   erb(:defs)
# end
