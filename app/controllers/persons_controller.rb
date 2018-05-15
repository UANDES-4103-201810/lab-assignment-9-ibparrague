class PersonsController < ApplicationController
  def new
  end

  def index
  end

  def create

    parametros = params[:person]
    @type = params[:type]
    if (@type == "Actor")
      @actor = Actor.new(person_params)
      @actor.save
      redirect_to @actor

    end
    if (@type == "Director")
      @director = Director.new(person_params)
      @director.save
      redirect_to @director
    end
  end

  def person_params
    params.require(:person).permit(:fist_name, :last_name, :birth_date, :description)
  end

end
