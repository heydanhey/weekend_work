# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end
end

# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# The add_a_fridge method
# The add_a_crib method
# The add_a_custom_amenity method

my_reservation = HotelReservation.new({customer_name: "Daniel Hey", date: "July 2, 2016", room_number: 237})

puts "TESTING RESERVATION INFO: -->"
puts "NAME: #{my_reservation.customer_name}"
puts "DATE: #{my_reservation.date}"
puts "ROOM NUMBER: #{my_reservation.room_number}"
print "AMENITIES: "
if my_reservation.amenities.empty?
  print "None"
else
  my_reservation.amenities.each do |amenity|
    print "#{amenity} "
  end
end
puts
puts "-----------------"

puts "TESTING CHANGE ROOM NUMBER: -->"
my_reservation.room_number = 666
puts "NAME: #{my_reservation.customer_name}"
puts "DATE: #{my_reservation.date}"
puts "ROOM NUMBER: #{my_reservation.room_number}"
print "AMENITIES: "
if my_reservation.amenities.empty?
  print "None"
else
  my_reservation.amenities.each do |amenity|
    print "#{amenity} "
  end
end
puts
puts "-----------------"

puts "TESTING ADD A FRIDGE: -->"
my_reservation.add_a_fridge
puts "NAME: #{my_reservation.customer_name}"
puts "DATE: #{my_reservation.date}"
puts "ROOM NUMBER: #{my_reservation.room_number}"
print "AMENITIES: "
if my_reservation.amenities.empty?
  print "None"
else
  my_reservation.amenities.each do |amenity|
    print "#{amenity} "
  end
end
puts
puts "-----------------"

puts "TESTING ADD A CRIB: -->"
my_reservation.add_a_crib
puts "NAME: #{my_reservation.customer_name}"
puts "DATE: #{my_reservation.date}"
puts "ROOM NUMBER: #{my_reservation.room_number}"
print "AMENITIES: "
if my_reservation.amenities.empty?
  print "None"
else
  my_reservation.amenities.each do |amenity|
    print "#{amenity} "
  end
end
puts
puts "-----------------"

puts "TESTING ADD CUSTOM AMENITY: -->"
my_reservation.add_a_custom_amenity("ocean view")
puts "NAME: #{my_reservation.customer_name}"
puts "DATE: #{my_reservation.date}"
puts "ROOM NUMBER: #{my_reservation.room_number}"
print "AMENITIES: "
if my_reservation.amenities.empty?
  print "None"
else
  my_reservation.amenities.each do |amenity|
    print "#{amenity} "
  end
end
puts
puts "-----------------"
