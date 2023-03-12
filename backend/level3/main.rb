# get the list of rentals
# iterate through that list

# calculate rental_days

# look up price_per_day for car
# conditionals:
# 1: if rental_days <= 1, get price_per_day
# 2: if rental_days > 1 && < 4, get price_per_day with 10% discount
# 3: if rental_days > 4 && < 10, get price_per_day with 30% discount
# 4: if rental_days > 10, get price_per_day with 50% discount
# multiply by price per day

# look up price_per_km
# multiply price_per_km by distance

# get total_price by adding time and distance components

# look up total_price
# calculate commission of 30%
# split comission into three parts: insurance_fee, assistance_fee, and drivy_fee
# calculate 50% of comission for insurance_fee
# calculate assistance_fee by multiplying rental_days by €1/day. If result is low, multiply by 100
# calculate drivy fee by subtracting insurance_fee and assistance_fee from commission

# return a hash with a key "rentals" which is an array of hashes with id, total price, and comission
# obs.: comission is a hash with keys insurance_fee, assistance_fee, and drivy_fee
# print this out in output-backend.json file
