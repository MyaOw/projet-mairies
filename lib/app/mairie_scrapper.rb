class Mairie
  attr_accessor :name, :departement, :email
  def initialize(name, departement,email) 
    @name = name
    @departement = departement
    @email = email
  end

  def as_json(options={})
      return {
            "name"  =>  @name,
            "departement"  =>  @departement,
            "email"  =>  @email
        }
  end
end