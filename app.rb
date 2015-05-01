require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/word_def')

get('/') do
   @word = Word.all()
  erb(:index)
end

post('/') do
  name = params.fetch('name')
  Word.new(name).save()
  @word = Word.all()
  erb(:index)
end


get('/def') do
  word_d = Word.word
  @word_def = word_d.def
  erb(:def)
end

post('/def') do
  defs = params.fetch('def')
  @def = WordDef.new(defs)
  @def.save()
  @word_def = WordDef.all()
  @word_def.add_def(@def)
  erb(:def)
end
