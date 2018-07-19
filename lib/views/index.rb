# require_relative "townhalls_scrapper"
# require_relative "townhalls_mailer.rb"
# require_relative "townhalls_adder_to_db.rb"
# require_relative "townhalls_follower.rb"




# Class "index"

#:gmai, :gmaikeyc, :gmaikeycs
#:twite, :twico, :twicos, :twica, :twicas


# 	attr_accessor :token_google, :token_twitter

# 	def initialize(token_google, token_twitter)
# 		@token_google = token_google
# 		@token_twitter = token_twitter
# 	end

# 	def token_google
# 		token_google.new
# 	end

# 	def token_twitter
# 		token_twitter.new
# 	end

# end

def gmailos

puts "quelle adresse gmail souhaitez-vous utiliser ?"
@GMAI = gets.chomp
puts "votre adresse gmail est : #{@GMAI}"

puts "quelle est la consumer_key utilisable pour ce compte ?"
@GMAIKEYC = gets.chomp
puts "la consumer_key de votre compte gmail est : #{@GMAIKEYC }"
puts "sur le env : #{@CONSUMER_KEY}"

puts "quelle est la clé consumer_secret utilisable pour ce compte ?"
@gmaikeycs = gets.chomp
puts "la clé consumer_secret de votre compte gmail est : #{@gmaikeycs}"


@CONSUMER_SECRET == "#{@gmaikeycs}"
puts "sur le env AAAAA: #{@CONSUMER_SECRET}"
end

gmailos

#@GMAI @GMAIKEYC @GMAIKEYCS
#@TWITE @TWICO @TWICOS @TWICA @TWICAS




def twiteros

puts "quelle compte twitter souhaitez-vous utiliser ?"
@TWITE = gets.chomp
puts "votre compte twitter est : #{@TWITE}"

puts "quelle est la clé consumer_key pour ce compte ?"
@TWICO = gets.chomp
puts "la consumer_key de votre compte twitter est : #{@TWICO}"

puts "quelle est la clé consumer_secret pour ce compte ?"
@TWICOS = gets.chomp
puts "la consumer_secret de votre compte twitter est : #{@TWICOS}"

puts "quelle est la clé access_token pour ce compte ?"
@TWICA = gets.chomp
puts "l'access_token de votre compte twitter est : #{@TWICA}"

puts "quelle est la clé access_token_secret pour ce compte ?"
@TWICAS = gets.chomp
puts "l'access_token_secret de votre compte twitter est : #{@TWICAS}"

end

twiteros


# def creation_fichier_env

# #:gmai, :gmaikeyc, :gmaikeycs
# #:twite, :twico, :twicos, :twica, :twicas

# end



# ultimate_townhall
# ├── .gitignore
# ├── .env (pas sur le répo GitHub, bien entendu 😉)
# ├── README.md
# ├── Gemfile
# ├── Gemfile.lock
# ├── app.rb
# ├── db
# │   └── townhalls.csv
# └── lib
#     ├── app
#     │   ├── townhalls_scrapper.rb
#     │   ├── townhalls_mailer.rb
#     │   ├── townhalls_adder_to_db.rb
#     │   └── townhalls_follower.rb
#     └── views
#         ├── done.rb
#         └── index.rb
#

# 4. Structure du dossier
# 4.1. Dotenv

# Dans ce programme, vous allez manipuler des clés d'API. 
# Une clé d'API ne se met JAMAIS dans un répository GitHub. 
# Pour ce programme, vous allez devoir passer par Dotenv pour gérer les clés d'API.
#
#
#


def action

    begin
            
            puts "Bienvenue sur notre mass-emailer des mairies du xxx"
            puts "Tape 1 pour scrapper les clients"
            puts "Tape 2 pour envoyer les emails"
            puts "Tape 3 pour ajouter .."
            puts "Tape 4 pour suivre nos clients sur twitter"
            puts "Tape 5 pour quitter le mass-emailer"
            
			i = gets.chomp.to_i


			if i == 1
			puts "townhalls_scrapper.rb"

			elsif i == 2
			puts "townhalls_mailer.rb"

			elsif i == 3
			puts "townhalls_adder_to_db.rb"

			elsif i == 4
			puts "townhalls_follower.rb"

	 #	elsif i == 5
	 #  abort

	 	  else
      abort
			
	 #		 puts " Voulez-vous relancer le programme ? Yes (1)"
   #       	 	a = gets.chomp.to_i
   #       			if a != 1
   #       			abort
   #       			end

   			

			end


	end while i != 5

end

action


############################

#dans le fichier .env

#:gmai, :gmaikeyc, :gmaikeycs
#:twite, :twico, :twicos, :twica, :twicas

#def gmailos
#puts "votre adresse gmail est : #{gmai}"
#puts "la consumer_key de votre compte gmail est : #{gmaikeyc}"
#puts "la clé consumer_secret de votre compte gmail est : #{gmaikeycs}"
#end
#gmailos
#def twiteros
#puts "votre compte twitter est : #{twite}"
#puts "la consumer_key de votre compte twitter est : #{twico}"
#puts "la consumer_secret de votre compte twitter est : #{twicos}"
#puts "l'access_token de votre compte twitter est : #{twica}"
#puts "l'access_token_secret de votre compte twitter est : #{twicas}"
#end
#twiteros

#@GMAI @GMAIKEYC @GMAIKEYCS
#@TWITE @TWICO @TWICOS @TWICA @TWICAS

#@CONSUMER_KEY = "#{@GMAIKEYC}"       => ne focntionne pas, ne renvoie pas de valeur qd je veux visualiser la valeur depuis index.rb
#@CONSUMER_SECRET = "#{@gmaikeycs}"   => idem

############################


