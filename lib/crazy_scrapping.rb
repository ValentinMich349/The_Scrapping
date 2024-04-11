require 'rubygems'
require 'nokogiri'
require 'open-uri'

# Code fonctionnel mais uniquement sur les 20 premiere crypto, n'attend pas que la page
# soit charger completement pour récuperer les données

def perform
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  crypto_names = page.xpath('//td[contains(@class, "by__symbol")]').map(&:content)
  crypto_prices = page.xpath('//td[contains(@class, "by__price")]').map(&:content)
  crypto_prices = crypto_prices.map{ |price| price.tr('$','').tr(',','')}
  crypto = Hash[crypto_names.zip(crypto_prices)]

  crypto_array = []

  crypto.each do |t,p|
    crypto_array.push(Hash.try_convert({t=>p}))
  end

  return crypto_array

end


puts perform

