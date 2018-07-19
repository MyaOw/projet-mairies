require 'gmail'
require 'rubygems'
require 'json'
require 'dotenv'
Dotenv.load("path/../../.env")  

class Mailer
  def send_mail(send_to, mairie)
    Gmail.connect(ENV["CONSUMER_KEY"], ENV["CONSUMER_SECRET"]) do |gmail|
    
      email = gmail.compose do
        to "jihane.thp@gmail.com"
        subject "The Hacking Project!"
        body "Bonjour,\n
        Nous sommes les Yatsu, élèves à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.\n
        \n  
        Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{mairie} #{send_to} veut changer le monde avec nous ?\n
        \n  
        \n
        Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80"
      end
    
    gmail.deliver(email)
    end
  end
end
