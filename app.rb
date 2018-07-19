require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib/app", __FILE__)
$:.unshift File.expand_path("./../lib/views", __FILE__)
require 'townhalls_adder_to_db'
require 'townhalls_follower'
require 'townhalls_mailer'
require 'townhalls_scrapper'
require 'utils'
require 'index'
require 'done'


require 'gmail'
require 'rubygems'
require 'json'
require 'dotenv'
require 'nokogiri'
require 'open-uri'
require 'twitter'

Dotenv.load #to loead the keys from the .env file or #Dotenv.load("path/../../.env")  

# Lancement de l'application
Index.perform
