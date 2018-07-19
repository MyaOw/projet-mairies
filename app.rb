# projet-mairies
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'townhalls_adder_to_db'
require 'townhalls_follower'
require 'townhalls_mailer'
require 'townhalls_scrapper'
require 'utils'


scrapping = Scrapping.new
mairies = scrapping.perform

tools = Utils.new
tools.saveObjects("Mairie",mairies,"scrap_mairie.json")

mairies = tools.loadObjects("scrap_mairie.json")
mairies.each{
    |mairie| 
    puts "#{mairie.name} - #{mairie.departement} - #{mairie.email}"
}