class GenreController < ApplicationController

  get '/genres' do
    erb :index
  end

  get '/genre/new' do
    erb :"/genre/new"
  end


  get "/genre/:slug" do
    @sluggy = Genre.find(params["slug"])
    erb :"/genre/show"
  end

end
