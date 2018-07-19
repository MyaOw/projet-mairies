class Index
    
    def Index.perform
        Index.start
        Done.finish  
    end     
    
    def Index.start
      puts " ------ Bienvenu sur le projet des Yatsu ----- " 
      puts " -- Cette application va vous permettre de  -- " 
      puts " --      Scrapper, Mailer et Tweeter  -- " 
      puts 
      print " Voulez-vous afficher les logs ? y pour oui " 
      log = true if gets.chomp == "y"
      print "[Scrapping] .... "
      Scrapping.new.perform(log)
      print "[Mailing] .... "
      mairies = Utils.load_town("town.json")
      Mailer.new.perform(mairies,log)
      print "[Tweeting] .... "
      Follow.new.perform(mairies,log)
   end 
    
 

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


end