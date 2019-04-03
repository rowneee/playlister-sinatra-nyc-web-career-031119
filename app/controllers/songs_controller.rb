require 'pry'
class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :"/songs/index"
  end

  get '/songs/new' do
    erb :"/songs/new"
  end

  get "/songs/:slug" do
    @song_slug = Song.find_by_slug(params["slug"])
    erb :"/songs/show"
  end

  post "/songs" do
    @song_title = params["song"]
    binding.pry
    redirect "/songs"
  end


end
