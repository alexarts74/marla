class HumansController < ApplicationController

  def index
    @humans = Human.all
  end

  def show
    @human = Human.find(params[:id])
  end

  def new
    @human = Human.new
  end

  def create
    @human = Human.new(human_params)
    if @human.save
      redirect_to human_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy

  end

  private

  def human_params
    params.require(:human).permit(:name, :description, :price, :category)
  end
end

# @restaurant = Restaurant.new(restaurant_params)
# if @restaurant.save
#   redirect_to restaurant_path(@restaurant)
# else
#   render :new, status: :unprocessable_entity
# end
