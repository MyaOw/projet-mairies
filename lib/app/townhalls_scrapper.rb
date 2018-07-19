require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'

class Mairie
  attr_accessor :name, :departement, :email
  def initialize(name, departement,email) 
    @name = name
    @departement = departement
    @email = email
  end

  def as_json(options={})
        {
            name: @name,
            departement: @departement,
            email: @email
        }
        
    end
end

class Scrapping
  include Enumerable

  def mairie_page(town)
    page = Nokogiri::HTML(open(town)) rescue false
    return page.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').text if page != false
    return "Page introuvable"
  end

  def mairie_dept(town)
    page = Nokogiri::HTML(open(town)) rescue false
    return page.xpath('/html/body/div/main/section[4]/div/table/tbody/tr[1]/td[2]').text if page != false
    return "Page introuvable"
  end
  
  def departement_page(dept)
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{dept}.html"))
      links = page.css("a.lientxt") 
end
  
  ############################################################
  def perform
    @name = []
    @dep = []
    @mail = []
    array = ["rhone", "rhone-2", "loire", "drome", "drome-2"]
    mairies = []
    array.each do |x|    

    url_all = departement_page(x)
    url_all.each do |url| 
      name = url.text
      dep = mairie_dept(url['href'].sub("./", "http://annuaire-des-mairies.com/"))
      mail = mairie_page(url['href'].sub("./", "http://annuaire-des-mairies.com/")) 
      mairies.push(Mairie.new(name, dep, mail))
      
    end
    end
    
    mairies.each{
      |mairie| puts "#{mairie.name} #{mairie.departement} #{mairie.email}"
    }
    
  
    # puts @hash = @name.zip(@dep, @mail).to_h
    File.open("../../db/scrap.json","w") do |f|
      mairies.each{
        |mairie|
        f.write(JSON.pretty_generate(mairie.as_json))
      }
      
    end
    
  end
end
scrapping = Scrapping.new
scrapping.perform
