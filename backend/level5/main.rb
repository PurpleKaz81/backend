# get the list of rentals
# iterate through that list

# calculate rental_days

# look up price_per_day for car
# conditionals:
# 1: if rental_days <= 1, get price_per_day
# 2: if rental_days > 1 && < 4, get price_per_day with 10% discount
# 3: if rental_days > 4 && < 10, get price_per_day with 30% discount
# 4: if rental_days > 10, get price_per_day with 50% discount
# multiply by price_per_day

# look up price_per_km
# multiply price_per_km by distance

# look up options
# confirm type used: gps, baby_seat, and additional_insurrance
# conditionals:
# if gps > 0, calculate gps cost to driver with rental_days * 5€/day
# if baby_seat > 0, calculate baby_seat cost to driver with rental_days * 2€/day
# if additional_insurrance > 0, calculate additional_insurance cost to driver with rental_days * 10€/day
# obs.: if these values are too low, multiply each by 100

# get total_price by adding total_time, total_distance, gps, baby_seat, and additional_insurance

# look up total_price
# driver gets total_price and is debited

# look up options and type: 'gps' and 'baby_seat'
# owner gets credited with (total_price * 0.7) + (gps * €5/day) + (baby_seat * €2/day)

# commission is total_price * 0.3
# split into three parts: insurance, assistance, and drivy
# insurance gets credited with comission * 0.5
# assistance gets credited with rental_days multiplied by €1/day (if result is low, multiply by €100/day)
# look up options and type: 'additional_insurrance'
# drivy gets credited with insurance - assistance + additional_insurance

# return a hash with a key "rentals" which is an array of hashes with id, options, and actions
# options is a key with a value containing an array
# actions is a key with an array of hashes with keys who, type, and amount
# who has values of driver, owner, insurance, assistance, and drivy
# type has values of debited or credited
# amount has total_price or fractions of it

# print this out in output-backend.json file
