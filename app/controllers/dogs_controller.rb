class DogsController < ApplicationController
  def my_account
    @humans = current_dog.humans
  end
end
