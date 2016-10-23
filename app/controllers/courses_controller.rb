class CoursesController < ApplicationController
  # fix ActionNotFound
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end
end
