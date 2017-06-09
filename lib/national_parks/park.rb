class NationalParks::Park
  attr_accessor :name, :history, :wildlife, :state, :activities, :url

  def initialize(name)
    @name = name
  end

  def self.create_park(a)
    new_park = self.new(a)
    State.new.add_park(new_park) unless State.parks.include?(new_park)

    end
  end




end
