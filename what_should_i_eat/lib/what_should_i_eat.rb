require "what_should_i_eat/version"

module WhatShouldIEat
  class Error < StandardError; end
  # Your code goes here...

  require 'net/http'
  require 'json'

  module WhatShouldIEat
    def WhatShouldIEat.fresh
      result = Net::HTTP.get('www.edamam.com', '/search?type=Feeds')
      recipes = JSON.parse(result)
      recipe_name = recipes.first['items'].first['label']
      recipe_url = recipes.first['items'].first['url']

      puts recipe_name
      puts recipe_url
    end
  end
end
