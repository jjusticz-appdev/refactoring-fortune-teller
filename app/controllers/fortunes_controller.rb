class FireController < ApplicationController

  def horoscopes
    @name = params.fetch("the_sign")
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@name.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)

    render({:template => "layouts/fortune.html.erb"})
  
  end

end
