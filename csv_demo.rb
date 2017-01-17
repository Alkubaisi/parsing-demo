require 'csv'

# TODO - let's read/write data from beers.csv
filepath    = 'data/beers.csv'

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

CSV.foreach(filepath) do |row|
  p row['Name']
end
