class Mailer
  
  #envoi un mail a sent_to, mairie est un paramettre utiisé dans le corps du mail    
  def send_mail(send_to, mairie)
    Gmail.connect(ENV["GMAIL_LOGIN"], ENV["GMAIL_PASS"]) do |gmail|
    
      email = gmail.compose do
        to send_to
        subject "The Hacking Project!"
        body "Bonjour,\n
        Nous sommes les Yatsu, élèves à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.\n
        \n  
        Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{mairie} veut changer le monde avec nous ?\n
        \n  
        \n
        Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80"
      end
        email.charset='UTF-8'
    gmail.deliver(email)
    end
  end
end
