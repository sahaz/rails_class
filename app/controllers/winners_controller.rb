class WinnersController < ApplicationController
	def index
   
  end
  def difference
		@winners=Winner.all
		  @current_winner =Winner.who_is_winner?(@winners)
		  @vote_diff=Winner.vote_diff?(@winners)
	end

  def show
  end

  def edit
  end
  
  def new
    @winner = Winner.new
  end
end
   