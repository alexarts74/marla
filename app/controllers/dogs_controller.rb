class DogsController < ApplicationController
  def my_account
    @humans = current_dog.humans
  end

  def dog_params
    params.require(:dog).permit(:name, :presentation, :photo)
  end
end
