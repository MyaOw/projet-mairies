class Utils

    def saveObjects(name,objects,name_file)
    
        File.open("db/#{name_file}","w") do |f|
    
        f.write("{\"#{name}\":[")
    
        taille = objects.size-2
    
        for i in 0..taille
            f.write(JSON.pretty_generate(objects[i].as_json))
            f.write(",") 
        end   
        f.write(JSON.pretty_generate(objects[taille-1].as_json))
    f.write("]}")
  
    end
    
    end   
    
    
    
    def loadObjects(name_file)
           
        file = File.read("db/#{name_file}")
            
        j = JSON.parse(file)

        objects = j['Mairie'].inject([]) { 
            |o,d| 
                puts o
           # puts "----"
           # puts d
           # puts "----"
        o << Mairie.new( d['name'], d['departement'], d['email'] ) 
    }
        
        return objects
     
    
    end   
     
end    