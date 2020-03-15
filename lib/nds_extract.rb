$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
def directors_totals(nds)
  pp directors_database
 counter = 0
 hash = {}
 while  counter <directors_database.length do
    gross=0
    index=0 
  while index < directors_database[counter][:movies].size do
  gross += directors_database[counter][:movies][index][:worldwide_gross]
    index +=1
  end
  director=directors_database[counter][:name]
 hash[director]=gross
counter +=1
end
 return hash
end

