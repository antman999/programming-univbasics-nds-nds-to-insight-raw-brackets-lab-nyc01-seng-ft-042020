$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
def directors_totals(nds)
  pp nds
 counter = 0
 hash = {}
 while  counter <nds.length do
    gross=0
    index=0 
  while index < nds[counter][:movies].size do
  gross += nds[counter][:movies][index][:worldwide_gross]
    index +=1
  end
  director=nds[counter][:name]
 hash[director]=gross
counter +=1
end
 return hash
end

