# require_relative 'data/input.json'
puts File.exist?('data/input.json')
require 'json'
require 'date'

json_data = File.read('data/input.json')
data = JSON.parse(json_data)

rentals = data['rentals'].map do |rental|
  car = data['cars'].find { |c| c['id'] == rental['car_id'] }

  # calculate number of rental days
  start_date = Date.parse(rental['start_date'])
  end_date = Date.parse(rental['end_date'])
  rental_days = (end_date - start_date).to_i + 1

  # claculate price per day
  distance_price = car['price_per_km'] * rental['distance']
  time_price = car['price_per_day'] * rental_days
  price = distance_price + time_price

  # build rental object
  { id: rental['id'], price: price }
end

# build object output
output = { rentals: rentals }

# output result as JSON
puts JSON.pretty_generate(output)
