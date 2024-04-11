require 'rubygems'
require 'nokogiri'
require 'open-uri'



def perform
    # HTML de townhall page
    page = Nokogiri::HTML(URI.open('https://www.aude.fr/annuaire-mairies-du-departement?keys=&commune='))
  
    # chemin email xpath
    mairie_name = page.xpath('//h2[contains(@class, "link__title")]').map(&:content)
    mairie_mail = page.xpath('//p[contains(@class, "infos__item -email")]').map(&:content)
    mairie_mail = mairie_mail.map{ |mail| mail.strip}

    mairie_info = Hash[mairie_name.zip(mairie_mail)]

    mairie_info_array = []

    mairie_info.each do |t,p|
        mairie_info_array.push(Hash.try_convert({t=>p}))
      end
      return mairie_info_array
  end
  
    puts perform

