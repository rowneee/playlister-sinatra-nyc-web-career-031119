class ArtistsController < ApplicationController

  get '/artists' do
    erb :index
  end

  get '/artist/new' do
    erb :"/artist/new"
  end


  get "/artist/:slug" do
    @sluggy = Artist.find(params["slug"])
    erb :"/artist/show"
  end

end
