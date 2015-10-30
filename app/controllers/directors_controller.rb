class DirectorsController < ApplicationController

def index
  @directors = Director.all
end

def new_form

end



def destroy
  @directors = Director.find(params[:id])

  @directors.destroy
end


def create_row
  @directors = Director.new
  @directors.dob = params[:dob]
  @directors.name = params[:name]
  @directors.bio = params[:bio]
  @directors.image_url = params[:image_url]

  @directors.save

  redirect_to("http://www.google.com")
end

def show_details
  @directors = Director.find(params[:id])
end

def edit_form
  @directors = Director.find(params[:id])
end

def update_row
  @directors = Director.find(params[:id])

  @directors.dob = params[:dob]
  @directors.name = params[:name]
  @directors.bio = params[:bio]
  @directors.image_url = params[:image_url]

  @directors.save

  render("show_details")
end



end
