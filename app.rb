require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rps')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  player1 = params.fetch('player1')
  player2 = params.fetch('player2')

  if player1.beats?(player2)=='true'
    @winner = 'Player 1 Wins!'
  elsif player1.beats?(player2)=='false'
    @winner = 'Player 2 Wins!'
  else
    @winner = 'Draw!'
  end
  erb(:result)
end
