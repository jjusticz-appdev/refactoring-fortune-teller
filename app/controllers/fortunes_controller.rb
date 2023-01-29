class FortunesController < ApplicationController

  def horoscopes
    @name = params.fetch("the_sign")
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@name.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end
    
    render({:template => "layouts/fortune.html.erb"})
    
  end

end
