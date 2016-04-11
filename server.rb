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

get "/search/:query" do
  query = params[:query]
  search = FilmAffinity::Search.new query
  search.to_json
end
