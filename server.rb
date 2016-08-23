require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './lib/browser.rb'
require 'pry'


get "/home" do 

	erb :movie_browser
end

post "/browser" do 
	word_to_search= params[:word]
	browser1 = Browser.new
	browser1.receive_input(word_to_search)
	redirect "/movie_selected"
end

get "/movie_selected" do 
	nine_movies = browser1.movies
	erb :movie_selected
end