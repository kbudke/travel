class WelcomeController < ApplicationController
  def index

  	@homestate = 'Colorado'
  	@countries = ['Belize','Costa Rico','Costa Rica','Cozumel','Panama',"Mexico","Jamaica"]

  	@images = ['Belize.jpg','jamaica3.jpg','costa_rica-Water-Fall.jpeg','panama-canal.jpg', 'bahamas.jpg', 'floating-waterfalls-china.jpg', 'norway.jpg', 'pennsylvania.jpg', 'hanging-falls-colorado.jpg', 'coloradosprings.jpg']
  end

  def about
  	@color = params[:color]
  	@size = params[:size].to_i
  end

  def map
  end
  
end












