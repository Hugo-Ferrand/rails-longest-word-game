class GamesController < ApplicationController
VOYELLES = ['a', 'e', 'i', 'o', 'u', 'y']

  def new
    # on ajoute 5 voyelles à la variable d'instance letters
    @letters = Array.new(5) { VOYELLES.sample }
    # on veut ajouter 5 consonnes à letters
    @letters += Array.new(5) { (('a'..'z').to_a - VOYELLES).sample }
    @letters.shuffle!
    # @letters.to_s.gsub('"', 'a')
  end

  def score
    @input = params[:score]
    @input_letters = params[:letters].split(" ")
  end
end
