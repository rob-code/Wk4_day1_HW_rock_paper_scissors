require('sinatra')
require('sinatra/contrib/all')
require('pry')
require('./models/game.rb')


get '/play/:hand1' do
game = Game.new(params[:hand1])
@result = game.play()
erb(:home)
end