require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

set :public_folder, 'public'

get('/') do
  erb(:index)
end

get('/wordcount') do
  phrase = params.fetch('phrase')
  target = params.fetch('target')
  @counter = phrase.word_count(target)
  erb(:wordcounter)
end
