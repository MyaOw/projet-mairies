class Utils

    def Utils.save_town(objects,name_file,log)
        puts "[Scrapping] Création du fichier de sauvegarde #{name_file}" if log

        File.open("db/#{name_file}","w") do |f|
    
        f.write("{\"Mairie\":[")
    
        taille = objects.size-2
    
        for i in 0..taille
            f.write(JSON.pretty_generate(objects[i].as_json))
            f.write(",") 
        end   
        f.write(JSON.pretty_generate(objects[taille-1].as_json))
    f.write("]}")
  
    end
        
       puts "[Scrapping] Données enregistrées" if log

    
    end   
    
    
    
    def Utils.load_town(name_file)
           
        file = File.read("db/#{name_file}")
            
        j = JSON.parse(file)

        objects = j['Mairie'].inject([]) { 
            |o,d| 

        o << Mairie.new( d['name'], d['departement'], d['email'] ) 
    }
        
        return objects
     
    
    end   
     
end    