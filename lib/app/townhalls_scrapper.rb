require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'json'
require_relative "mairie_scrapper"

class Scrapping
  include Enumerable

  def mairie_page(town)   # Rapporte la page de la mairie
    page = Nokogiri::HTML(open(town)) rescue false
    return page.xpath('/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]').text if page != false
    return "Page introuvable"
  end

  def mairie_dept(town)   # Rapporte le département en toutes lettres
    page = Nokogiri::HTML(open(town)) rescue false
    return page.xpath('/html/body/div/main/section[4]/div/table/tbody/tr[1]/td[2]').text if page != false
    return "Page introuvable"
  end
  
  def departement_page(dept)  # Rapporte la page du département
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{dept}.html"))
      links = page.css("a.lientxt") 
end
  
  
  def perform
    mairies = []
    array = ["rhone", "rhone-2", "loire", "drome", "drome-2"]
    array.each do |x|    

    url_all = departement_page(x)  # Rapporte les pages de département depuis l'array
    url_all.each do |url| 
      name = url.text   # Nom de la mairie
      dep = mairie_dept(url['href'].sub("./", "http://annuaire-des-mairies.com/"))  # Département de la mairie
      mail = mairie_page(url['href'].sub("./", "http://annuaire-des-mairies.com/"))   # Mail de la mairie
      mairies.push(Mairie.new(name, dep, mail))   # Ajoute ces infos dans un array
    end
    end
    
    mairies.each{
      |mairie| puts "#{mairie.name} #{mairie.departement} #{mairie.email}"
    }
    
  end
end

