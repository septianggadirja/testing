require 'capybara/cucumber' #untuk akses browser (mesinnya)
require 'site_prism'
require 'data_magic'
require 'pry'

base_url = 'http://sehatq.com'

DataMagic.yml_directory = './features/config/data/prod'

Before do |scenario|
  Capybara.default_driver = :selenium_chrome
  Capybara.app_host = base_url

  @pages = Pages.new
  @driver = page.driver
end