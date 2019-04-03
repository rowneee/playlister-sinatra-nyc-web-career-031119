class SongsController < ApplicationController


  get '/songs' do
    erb :index
  end

  get '/songs/new' do
    erb :"/songs/new"
  end


  get "/songs/:slug" do
    @sluggy = Song.find(params["slug"])
    erb :"/songs/show"
  end



end
