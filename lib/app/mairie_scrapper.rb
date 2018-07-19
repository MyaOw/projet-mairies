class Mairie   # La classe Mairie correspond à l'objet mairie
  attr_accessor :name, :departement, :email  # L'objet a 3 variables
  def initialize(name, departement,email) 
    @name = name
    @departement = departement
    @email = email
  end

  def as_json(options={})  # permet de transformer notre array en json
      return {
            "name"  =>  @name,
            "departement"  =>  @departement,
            "email"  =>  @email
        }
  end
end