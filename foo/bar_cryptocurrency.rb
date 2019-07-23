# frozen_string_literal: true

require 'pry'
require 'nokogiri'
require 'open-uri'

URL_CRYPTO = 'https://coinmarketcap.com/all/views/all/'

# Collects cryptocurrencies and their prices, and puts live process
# Returns an array of hashes
def crypto_scrapping
  doc = Nokogiri::HTML(open(URL_CRYPTO))
  rows = doc.css('#currencies-all > tbody > tr')
  rows.map do |row|
    {
      row.at_css('.col-symbol').text =>
      row.at_css('.price')['data-usd'].to_f
    }
  end
end

crypto_scrapping
