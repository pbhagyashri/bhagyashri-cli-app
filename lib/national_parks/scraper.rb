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

end
