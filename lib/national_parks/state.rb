class NationalParks::State
  attr_accessor :name, :parks

  @@all = []

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
