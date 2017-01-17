require 'csv'

beers = [
  { name: 'Guinness', appearance: 'Brown', origin: 'Ireland' },
  { name: 'Stella', appearance: 'Blond', origin: 'Belgium' },
  { name: 'London Pride', appearance: 'Blond', origin: 'UK' }
]

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'beers.csv'


CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']

  #CSV is an array of beers
  #beer is a hash
  # -> convert this hash into an array to store it in csv file

  beers.each do |beer|
    csv << [ beer[:name], beer[:appearance], beer[:origin] ]
  end
end
