require 'twitter'
require 'dotenv'
Dotenv.load #to loead the keys from the .env file

class Follow
	attr_accessor :client

	def initialize 
		@arr #Init a empty array to be used later on
 		@client = Twitter::REST::Client.new do |config| #Init the Twitter account with the keys from the dotenv file
 			
	  	config.consumer_key        = ENV["TWITTER_API_KEY"]
	  	config.consumer_secret     = ENV["TWITTER_API_SECRET"]
	  	config.access_token        = ENV["TWITTER_TOKEN"]
	  	config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
		end
		
 	end


	def search_mairie(mairie) #Method to search the townhall in twitter and follow the first result
		puts mairie
		@arr = [] # Init an empty array

		@arr = @client.user_search("mairie de #{mairie}") # function to search
		@arr.each {|c| p @client.first.follow(c)} #funtion to follow every first name that apears after the search
	end

end #Ends the Twitter class

