require "filmaffinity"
require "sinatra"

get "/" do
  erb :index
end

get "/top" do
  top = FilmAffinity::Top.new
  top.to_json
end

get "/movie/:id" do
  movie_id = params[:id]
  movie = FilmAffinity::Movie.new movie_id
  movie.to_json
end

get "/search" do
  q = params[:q]
  search = FilmAffinity::Search.new q
  search.to_json
end
