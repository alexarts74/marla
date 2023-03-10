class HumansController < ApplicationController
  skip_before_action :authenticate_dog!, only: %i[index show]

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
    @human.dog = current_dog
    if @human.save!
      params[:human][:category_ids].each do |category_id|
        category = Category.find(category_id)
        HumanCategory.create!(category: category, human: @human)
      end
      redirect_to human_path(@human)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @human = Human.find(params[:id])
    @human.human_categories.delete_all
    @human.destroy
    redirect_to my_account_path, notice: "ciao"
  end

  private

  def human_params
    params.require(:human).permit(:name, :description, :price, :photo)
  end
end

# @restaurant = Restaurant.new(restaurant_params)
# if @restaurant.save
#   redirect_to restaurant_path(@restaurant)
# else
#   render :new, status: :unprocessable_entity
# end
