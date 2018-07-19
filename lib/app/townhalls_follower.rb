require 'twitter'
require 'dotenv'
Dotenv.load

class Follow
	attr_accessor :client

	def initialize 
		@arr
 		@client = Twitter::REST::Client.new do |config|
 			
	  	config.consumer_key        = ENV["TWITTER_API_KEY"]
	  	config.consumer_secret     = ENV["TWITTER_API_SECRET"]
	  	config.access_token        = ENV["TWITTER_TOKEN"]
	  	config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
		end
		
 	end


	def search_mairie(mairie)
		puts mairie
		@arr = [] # Init an empty array

		#@arr = @client.user_search("mairie de #{mairie}") # Search the name of an
		 #@arr.each {|c| p @client.follow(c)} 
	end
#################"JSON READER################################
puts "bonjour"
	

# json = File.read('../../db/scrap.json')
# nom_mairies = JSON.parse(JSON) # access the JSON file
# 	nom_mairies(0).each do |name_to_search|
# 		search_mairie(nam_to_search)
# 	end

# pp nom_mairies




end #Ends the Twitter class

