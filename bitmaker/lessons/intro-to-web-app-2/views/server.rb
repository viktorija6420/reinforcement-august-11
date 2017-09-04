require 'sinatra'
require_relative 'recipe'

get '/' do
  redirect to ('/recipes')
end

get '/about' do
  'TODO'
end

get '/contact' do
  'TODO'
end

get '/legalise' do
  'TODO'
end

get '/recipes':id do
@recipe_num = params[:id].to_i
  @recipes: {
    1: 'BBQ Ribs',
    2: 'Avocado Sushi',
    3: 'Gluten-Free Cookies'
  }
  #We are going to store our recipes in a database
  #instead of in a hash

  erb:recipes
end

get '/recipes/:id' do
 @recipe_num = prams[:id] #hash given by sinatra
end

erb:recipe

end
# get '/recipes/1' do
#   erb:recipe_1
# end
#
# get '/recipes/2' do
#   erb:recipe_2
# end
#
# get '/recipes/3' do
#   erb:recipe_3
# end
