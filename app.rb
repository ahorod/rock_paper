require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/find_replace')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  old_sentence = params.fetch('sentence')
  old_word = params.fetch('word1')
  new_word = params.fetch('word2')

  @new = old_sentence.find_replace(old_word,new_word)
  erb(:result)
end
