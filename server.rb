require "filmaffinity"
require "sinatra"

before "/api/*" do
  content_type "application/json"

  FilmAffinity.configure do |config|
    config.language = params[:lang].nil? ? 'EN' : params[:lang]
    config.imgur_id = params[:imgur_id]
  end
end

get "/" do
  erb :index
end

get "/api/top" do
  FilmAffinity::Top.new.to_json
end

get "/api/movie/:id" do
  FilmAffinity::Movie.new(params[:id]).to_json
end

get "/api/search" do
  FilmAffinity::Search.new(params[:q]).to_json
end
