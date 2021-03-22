class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all 
    @@all
  end 

  def paintings
    Painting.all.select { |painting_arg| painting_arg.artist == self}
  end 

  def galleries
    paintings.collect { |painting| painting.gallery }
  end 

  def cities
    galleries.collect { |gallery| gallery.city }
  end 

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end 

  def self.total_experience
    Artist.all.sum { |artist| artist.years_experience }
  end 

  def self.most_prolific
    rate_of_art = 0.0
    chosen_artist = nil
    Artist.all.each do |artist| 
      art_rate = artist.paintings.count/artist.years_experience.to_f
      if art_rate > rate_of_art
        rate_of_art = art_rate
        chosen_artist = artist
      end 
    end 
    chosen_artist
  end 



end
