class WelcomeController < ApplicationController
  def index
    @stories = Story.all
    @first_story = Story.find_by(title: "Starship")
  end
end
