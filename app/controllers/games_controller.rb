require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @random_letters = ('a'..'z').to_a.sample(10)
  end

  def score
    @word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    string = open(url).read
    @dictionary = JSON.parse(string)

  end


private

  def sample



  end





my_string = "abcdefg"
if my_string.include? "cde"
   puts "String includes 'cde'"
end
