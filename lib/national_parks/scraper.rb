class NationalParks::Scraper

  def scrape_mapquest_index_page
    page = Nokogiri::HTML(open("https://travel.mapquest.com/national-parks/national-parks-by-state/"))
  #  e = page.css(".page-article h3").text.delete "(/Flight [0-9]/)"

    binding.pry

  end
end
