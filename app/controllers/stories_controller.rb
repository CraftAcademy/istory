class StoriesController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @stories = Story.all
  end

  def show
    @story = Story.find(params[:id])
    @first_chapter = @story.chapters.first
  end
end
