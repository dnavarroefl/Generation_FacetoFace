class Car 

	attr_accessor :sound 

	def initialize sound, color, speed
		@sound = sound
		@color = color
		@speed = speed

		new_var = IO.read("cars.txt").to_i 
		new_var +=1 
		IO.write("cars.txt", new_var)	
	end 

	def self.get_total_cars
		IO.read("cars.txt")
	end 

	def self.show_total_cars
		puts IO.read("cars.txt")
	end

	def make_noise
		puts @sound
	end 

	def show_color
		puts @color
	end 

	def show_speed
		puts @speed
	end 
end 

class Racing < Car
	def initialize 
		@sound = "BROOOM"
	end 
end 

my_car1 = Car.new 'broom', 'red', '200km'
my_car1.make_noise
my_car1.show_color 
my_car1.show_speed

my_car2 = Car.new 'BROOOOOM!', 'yellow', '290km'
my_car2.make_noise
my_car2.show_color
my_car2.show_speed

my_racing_car = Racing.new
my_racing_car2 = Racing.new

my_racing_car.make_noise
my_racing_car2.make_noise

Car.show_total_cars

=begin

cars = [Car.new("Broom", "red", "100km"), Car.new("Broom", "red", "100km")]
cars.each do |key|
	key.make_noise
=end 

#Crea un array de coches y hace que cada uno reproduzca el sonido del string

sounds = ["Broom", "Meek", "Nyan"]
cars = sounds.map {|sound| Car.new(sound,"black","300km")}

puts cars 

sounds_cars = cars.reduce("") do |str,car|
str+ car.sound
end 

puts sounds_cars

[Car.new("Broom", "red", "100km"), Car.new("Broom", "red", "100km")].concat(["Broom", "Meek", "Nyan"])
cars















