require 'rubygems'
require 'nokogiri'  
require 'open-uri'


def symbols 
  

  page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
  crypto_symbols = page.xpath('///*[@id]/td[3]')
  crypto_prices = page.xpath('///*[@id]/td[5]')

  list_symbols = Array.new 
  list_prices = Array.new
  
  crypto_symbols.each do |n|
    list_symbols << n.text
  end
  
  crypto_prices.each do |i|
    list_prices << i.text
  end
  
  puts Hash[list_symbols.zip(list_prices)]
  
end

symbols()

#Array dans hash et pas le contraire 
#Mettre mes prices en float 

