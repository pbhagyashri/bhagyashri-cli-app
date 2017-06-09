class NationalParks::CLI


   def call
     list_states
     start
   end #call

  def list_states
    all_states = NationalParks::Scraper.make_states
    all_states.collect{|s| puts "#{s.name}"}
  end #list_parks

  def list_parks

  end

  def start
    puts "test test"
    input = nil
    while input != "exit"
      puts "enter the name of the state you would like to visit or enter exit:"
      input = gets.strip.downcase
      case input
      when "alaska"
        puts "numbered list of the parks in Alaska."
      when "american samona"
        puts "numbered list of parks in american samona"
      when "list"
        list_parks
      when "exit"
        greeting
      else
        puts "Invalid input. Please enter list or exit"
      end #case input
    end #while
  end#start

  def greeting
    puts "Thank you for using my gem. Have a nice trip!!"
  end #greeting

end #NationalParks::CLI
