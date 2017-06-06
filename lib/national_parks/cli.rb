class NationalParks::CLI
  def call
    list_parks
    start
  end #call

  def list_parks
    puts "A list of all the parks sorted by states."
  end #list_parks

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
      end #case input
    end #while
  end#start
end #NationalParks::CLI