require 'json'

beers = {
  name: 'Menu',
  list: [
    {
      name:       'Edelweiss',
      appearance: 'White',
      origin:     'Austria'
      },
      {
        name:       'Guinness',
        appearance: 'Stout',
        origin:     'Ireland'
      }
    ]
  }


#user input gave us 3 values (name, appearance and a origin)
#new_beer = { name: name, appearance: appearance, origin: origin }

#beers['list'] is an Array of Hashes
#each beer is a Hash

#beers['list'] << new_beer


File.open('beers.json', 'w') do |file|
  json_beers = JSON.generate(beers)
  file.write(json_beers)
end




