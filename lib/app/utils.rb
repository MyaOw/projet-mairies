class Utils
    #methode qui va enregistrer les objets mairies dans un fichier json
    def Utils.save_town(objects,name_file,log)
        puts "[Scrapping] Création du fichier de sauvegarde #{name_file}" if log

        File.open("db/#{name_file}","w") do |f|
          f.write("[") # pour lui indiquer qu'on a un tableau
          f.write(JSON.pretty_generate(objects.first.as_json)) # on traite la 1ere Mairie
          objects[1..objects.size].each{ # on traite les autres Mairies en ajoutant "," pour les separer 
              |x|
              f.write(","+JSON.pretty_generate(x.as_json))
          }
            f.write("]")# on ferme le tableau
        end
        
       puts "[Scrapping] Données enregistrées" if log
    end   
    
    #methode qui va creer un tableau de Mairie a aprtir d'un fichier
    def Utils.load_town(name_file)
           
        file = File.read("db/#{name_file}")         
        mairies = []
        JSON.parse(file).each{
            |r| 
            mairies << Mairie.new(r['name'],r['departement'],r['email']) # pour chaque entrer on créer une Mairie
            }
        return mairies
    end   
     
end    