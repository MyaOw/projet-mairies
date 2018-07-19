# projet-mairies
require 'bundler'
require 'gmail'
require 'rubygems'
require 'json'
require 'dotenv'
Dotenv.load
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
require 'townhalls_adder_to_db'
require 'townhalls_follower'
require 'townhalls_mailer'
require 'townhalls_scrapper'
require 'utils'


#scrapping = Scrapping.new
#mairies = scrapping.perform

tools = Utils.new
#tools.saveObjects("Mairie",mairies,"scrap_mairie.json")

mairies = tools.loadObjects("scrap_mairie.json")
mairies.each{
    |mairie| 
#    puts "#{mairie.name} - #{mairie.departement} - #{mairie.email}"
# Mailer.new.send_mail(mairie.email, mairie.name)
Follow.new.search_mairie(mairie.name)
}

Mailer.new.send_mail(mairies[5].email, mairies[5].name)
