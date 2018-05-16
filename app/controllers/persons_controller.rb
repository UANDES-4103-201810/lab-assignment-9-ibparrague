class PersonsController < ApplicationController
  def new
  end


  def index
    if (params[:q] == "actors")
      @actor = Actor.all
      redirect_to "/actors"
    end
    if (params[:q] == "directors")
      @director = Director.all
      redirect_to "/directors"
    end
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
    params.require(:person).permit(:first_name, :last_name, :birth_date, :description)
  end

end
