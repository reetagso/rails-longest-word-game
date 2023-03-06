class GamesController < ApplicationController

  def new
    @array = Array.new(10) { ('A'..'Z').to_a.sample }

  end

  def score
    @word = params[:word].upcase
    @array = params[:array].chars
    if @word.chars.all? { |letter| @word.count(letter) <= @array.count(letter)}
      @score = "Valid"
    else
      @score = "Not valid"
    end
  end
end
