# PRIMEIRO ARQUIVO QUE SISTEMA LE QQDO E EXECUTAVEL

require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'helper.rb'
require_relative 'page_helper.rb'
require 'time'
require 'date'


#VARIAVEL 
ENVIRONMENT = ENV['ENVIRONMENT']
#vai imprimir 
puts "Ambiente>> #{ENVIRONMENT}"

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/environments/#{ENVIRONMENT}.yml")

World(Pages, Helper)

Capybara.ignore_hidden_elements = false
Capybara.configure do |config|

    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_default']        
    config.default_max_wait_time = 10
end