class NationalParks::State
  attr_accessor :name, :parks

  @@all = []

  def self.scrape_states
    page = Nokogiri::HTML(open("https://travel.mapquest.com/national-parks/national-parks-by-state/"))
    e = page.css("article h3")
     all_states = []
     e.each do |state|
        all_states << state.text
     end
     all_states.drop(5)
  end



  def initialize(name)
    @name = name
    @parks = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_park(park)
    if !park.is_a?(Park)
      raise "Invalid Park"
    else
      @parks << park
    end
  end

end
