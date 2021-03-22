require_relative '../config/environment.rb'
require_relative '../app/models/artist'
require_relative '../app/models/gallery'
require_relative '../app/models/painting'

picasso = Artist.new("Pablo Picasso", 5)
dali = Artist.new("Salvador Dali", 2)
botero = Artist.new("Fernando Botero", 3)

galleryOne = Gallery.new("Gallery One", "Grenada")
galleryTwo = Gallery.new("Gallery Two", "Mexico City")
galleryThree = Gallery.new("Gallery Three", "Bogota")

paintingOne = Painting.new("Melting Clock", 1000, dali, galleryTwo)
paintingTwo = Painting.new("Fat Lady", 2000, botero, galleryThree)
paintingThree = Painting.new("Fat Bird", 4000, botero, galleryThree)
paintingFour = Painting.new("WWII", 10000, picasso, galleryOne)
paintingFive = Painting.new("La Guernilla", 2500, picasso, galleryThree)

binding.pry

puts "Bob Ross rules."
