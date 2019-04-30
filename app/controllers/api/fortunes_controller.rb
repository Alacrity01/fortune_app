class Api::FortunesController < ApplicationController

  def random_fortune
    @fortune = [
               "Today you will die! ^_^", 
               "Today you are unfortunate! Please try again l8er!!", 
               "Happy wife, happy life! If single, get ready to mingle!"
                ].sample

    render 'random_fortune_view.json.jbuilder'
  end

  def lotto
    @lottery = []
    6.times do
      @lottery << rand(1..60)
    end
    render 'lotto_view.json.jbuilder'
  end

  def visits
    visit_count = 0
    @visit_count = visit_count
    @visit_count += 1
  end

  def bottles_of_beer
    @lyrics = lyrics
    render 'lyrics_view.json.jbuilder'
  end
end
