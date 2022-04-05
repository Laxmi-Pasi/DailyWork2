class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(person_params)
      if @person
        flash[:error]="succesccfully created"
        redirect_to people_path
      end
  end

  def edit
  end

  def show          
  end

  private
    def person_params
      params.require(:person).permit(:first_name, :last_name, addresses_attributes: [:id, :kind, :street, :_destroy])
    end
end
