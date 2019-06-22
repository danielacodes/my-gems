require 'net/http'
require 'json'

module WhatShouldIEat
  def self.fresh
    result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
    recipes = JSON.parse(result)
    name = recipes.first['items'].first['label']
    url = recipes.first['items'].first['url']

    puts "Would you like to eat #{name}? You can find the recipe by clicking on the link #{url}"
  end
end
