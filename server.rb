require "filmaffinity"
require "sinatra"

before '/api/*' do
   content_type 'application/json'
end

get "/" do
  erb :index
end

get "/api/top" do
  top = FilmAffinity::Top.new
  top.to_json
end

get "/api/movie/:id" do
  movie_id = params[:id]
  movie = FilmAffinity::Movie.new movie_id
  movie.to_json
end

get "/api/search" do
  q = params[:q]
  search = FilmAffinity::Search.new q
  search.to_json
end
