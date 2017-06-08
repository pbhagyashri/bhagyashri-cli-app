class NationalParks::Scraper

  def scrape_states
    page = Nokogiri::HTML(open("https://travel.mapquest.com/national-parks/national-parks-by-state/"))
    e = page.css("article h3")
     all_states = []
     e.each do |state|
        all_states << state.text
     end
     all_states.drop(5)
  end

  def make_states
    scrape_states.each do |s|
      NationalParks::State.new_from_mapquest(s)
      binding.pry
    end
  end

end
