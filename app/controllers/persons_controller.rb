class PersonsController < ApplicationController
  def new
  end

  def index
  end

  def create

    @type = params[:type]
    if (@type == "Actor")

    end
    if (@type == "Director")
      @director = Director.new()

    end
  end


end
