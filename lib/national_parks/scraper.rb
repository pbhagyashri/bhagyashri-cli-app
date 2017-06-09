class NationalParks::Scraper

  def self.state_scraper
    page = Nokogiri::HTML(open("https://travel.mapquest.com/national-parks/national-parks-by-state/"))
    e = page.css("article h3")
     all_states = []
     e.each do |state|
        all_states << state.text
     end
     all_states.drop(5)
  end

  def self.make_states
    state_scraper.collect do |state_name|
      NationalParks::State.create_states(state_name)
    end
  end

  def self.assign_parks
    park_scraper.each do |park|
      NationalParks::State.add_park(park)
    end
  end

  def self.park_scraper
    doc = Nokogiri::HTML(open("https://travel.mapquest.com/national-parks/national-parks-by-state/"))
    parks = doc.css(".page-article li")

    all_parks = []
    parks.each do |park|
       all_parks << park.text
    end
    all_parks
  end

end
