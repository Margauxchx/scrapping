require 'rubygems'
require 'nokogiri' 
require 'open-uri'


def get_deputes_urls

  names = []
  emails = []

  page = Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes")) 
  links = page.xpath('//a[contains(@href, "/")]')
  
  links.each do |link|
    print "#{get_deputes_email(link['href'])}             \r" #Fait apparaitre les noms pendant la recherche
    emails << get_deputes_email(link['href'])
  end 

  links.each do |name|
    names << name.text
  end
  
  	puts Hash[names.zip(emails)]

end

def get_deputes_email(url)
	
	web = Nokogiri::HTML(open("https://www.nosdeputes.fr/" + url))
  
	mail = (web.xpath('//a[contains(@href,"mailto")]').text)
	
end

get_deputes_urls

#A arranger pour faire marcher
