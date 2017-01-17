require 'json'

# TODO - let's read/write data from beers.json
filepath    = 'data/beers.json'

serialized_beers = File.read(filepath)
#serialized_beers is a String

beers = JSON.parse(serialized_beers)

