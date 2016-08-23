require 'imdb'
require './lib/browser.rb'

describe "test movie " do 
	let(:browser){Browser.new}
	it "check if receive input works" do
		expect(browser.receive_input('titanic').class).to be(Array)
	end

	it "check find movies with poster function" do 
		
		expect(browser.find_ninemovies_with_posters).to eq(0)

	end
end