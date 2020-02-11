$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  movie_index = 0
  movies = director_data[:movies]
  total = 0
  
  while movie_index < movies.length do
    total += movies[movie_index][:worldwide_gross]
    movie_index += 1
  end
  total
end

gross_for_director(directors_database[0])

# Write a method that, given an NDS creates a new Hash
# The return value should be like:

def directors_totals(nds)	  
  result = {}
  director_index = 0
  while director_index < nds.count do
      director_name = nds[director_index][:name]
      result[director_name] = gross_for_director(nds[director_index])
      director_index += 1
  end
  pp result
end

